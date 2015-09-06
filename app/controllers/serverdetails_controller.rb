class ServerdetailsController < ApplicationController
    before_filter :authenticate_user!
    
    def index
         @serverdetails = Serverdetail.all
      if params[:search]
            @serverdetails = Serverdetail.search(params[:search]).order("created_at DESC")
         else
            @serverdetails = Serverdetail.order("created_at DESC")
      end
         
         respond_to do |format|
             format.html
             format.csv { send_data @assetdetails.to_csv }
             format.xls # { send_data @lists.to_csv(col_sep: "\t") }
         end
    end
    
    def new
        
        @serverdetail = Serverdetail.new
    end
    
    def create
        @serverdetail = Serverdetail.create(serverdetail_params)
        if @serverdetail.save
            flash[:success] = "Your Record has been created successfully"
            redirect_to serverdetails_path
        else
            render :new
        end
        
    end
    
    def edit
        @serverdetail = Serverdetail.find(params[:id])
    end
    
    def update 
         @serverdetail = Serverdetail.find(params[:id])
        if @serverdetail.update(serverdetail_params)
            flash[:success] = "Your Asset has been updated Successfully"
            redirect_to serverdetails_path
        else
            render :edit
        end
    end
    
     def show
          @serverdetail = Serverdetail.find(params[:id]) 
     end
    
     def destroy
          @serverdetail = Serverdetail.find(params[:id])
          if @serverdetail.destroy
              flash[:danger] = "Your record has been deleted successfully"
              redirect_to serverdetails_path
          else
              flash[:danger] = "Record not deleted"
          end
     end
    
    private
    
       def serverdetail_params
           params.require(:serverdetail).permit(:name, :model, :serial_no, :asset_tag, :warranty, :monitor_model, :monitor_tag, :monitor_size, :mouse, :mouse_tag, :keyboard, :keyboard_tag, :installed_os, :date_of_purchase)
       end
    
end