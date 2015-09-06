class LaptopdetailsController < ApplicationController
     before_filter :authenticate_user!
    def index
        @laptopdetailss = Laptopdetail.all
      if params[:search]
            @laptopdetails = Laptopdetail.search(params[:search]).order("created_at DESC")
         else
            @laptopdetails = Laptopdetail.order("created_at DESC")
      end
         
         respond_to do |format|
             format.html
             format.csv { send_data @assetdetails.to_csv }
             format.xls # { send_data @lists.to_csv(col_sep: "\t") }
         end
    end
    
    def new
        
        @laptopdetail = Laptopdetail.new
    end
    
    def create
        @laptopdetail = Laptopdetail.create(laptopdetail_params)
        if @laptopdetail.save
            flash[:success] = "Your Record has been created successfully"
            redirect_to laptopdetails_path
        else
            render :new
        end
        
    end
    
    def edit
        authorize! :update, @laptopdetail
        @laptopdetail = Laptopdetail.find(params[:id])
    end
    
    def update 
         @laptopdetail = Laptopdetail.find(params[:id])
        if @laptopdetail.update(laptopdetail_params)
            flash[:success] = "Your Laptop Details has been updated Successfully"
            redirect_to laptopdetails_path
        else
            render :edit
        end
    end
    
     def show
          @laptopdetail = Laptopdetail.find(params[:id]) 
     end
    
     def destroy
          @laptopdetail = Laptopdetail.find(params[:id])
          if @laptopdetail.destroy
              flash[:danger] = "Your record has been deleted successfully"
          else
              flash[:danger] = "Record not deleted"
          end
     end
    
    private
    
       def laptopdetail_params
           params.require(:laptopdetail).permit(:name, :model, :serial_no, :asset_tag, :monitor_name, :warranty, :monitor_model, :monitor_tag, :monitor_size, :mouse, :mouse_tag, :keyboard, :keyboard_tag, :installed_os, :date_of_purchase)
       end
end
