class AssetdetailsController < ApplicationController
    before_filter :authenticate_user!
    def index
         @assetdetailss = Assetdetail.all
      if params[:search]
            @assetdetails = Assetdetail.search(params[:search]).order("created_at DESC")
         else
            @assetdetails = Assetdetail.order("created_at DESC")
      end
         
         respond_to do |format|
             format.html
             format.csv { send_data @assetdetails.to_csv }
             format.xls # { send_data @lists.to_csv(col_sep: "\t") }
         end
    end
    
    def new
        
        @assetdetail = Assetdetail.new
    end
    
    def create
        @assetdetail = Assetdetail.create(assetdetail_params)
        if @assetdetail.save
            flash[:success] = "Your Record has been created successfully"
            redirect_to assetdetails_path
        else
            render :new
        end
        
    end
    
    def edit
        @assetdetail = Assetdetail.find(params[:id])
    end
    
    def update 
         @assetdetail = Assetdetail.find(params[:id])
        if @assetdetail.update(assetdetail_params)
            flash[:success] = "Your Asset has been updated Successfully"
            redirect_to assetdetails_path
        else
            render :edit
        end
    end
    
     def show
          @assetdetail = Assetdetail.find(params[:id]) 
     end
    
     def destroy
          @assetdetail = Assetdetail.find(params[:id])
          if @assetdetail.destroy
              flash[:danger] = "Your record has been deleted successfully"
              redirect_to assetdetails_path
          else
              flash[:danger] = "Record not deleted"
          end
     end
    
    private
    
       def assetdetail_params
           params.require(:assetdetail).permit(:name, :model, :serial_no, :asset_tag, :warranty, :monitor_model, :monitor_tag, :monitor_size, :mouse, :mouse_tag, :keyboard, :keyboard_tag, :installed_os, :date_of_purchase)
       end
end