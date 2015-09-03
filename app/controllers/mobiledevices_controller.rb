class MobiledevicesController < ApplicationController
    
    def index
        @query = Mobiledevice.search do
        fulltext params[:search]
        end
        @mobiledevices = @query.results
        
    end

    def new
        
        @mobiledevice = Mobiledevice.new
    end
    
    def create
         @mobiledevice = Mobiledevice.create(mobile_params)
         
        if @mobiledevice.save
            flash[:success] = "Your record has been created successfully"
            redirect_to mobiledevices_path
        else
            render :new
        end
    end

    
    def edit
        @mobiledevice = Mobiledevice.find(params[:id])
    end
    
    def update
        
        @mobiledevice = Mobiledevice.find(params[:id])
        if @mobiledevice.update(mobile_params)
            flash[:success] = "Your record has been updated successfully"
            redirect_to mobiledevices_path
        else
            flash[:danger] = "Not Updated"
            render :edit
        end
    end
    
    def show
        @mobiledevice = Mobiledevice.find(params[:id])
    end
    
    def destroy
         @mobiledevice = Mobiledevice.find(params[:id])
         if @mobiledevice.destroy
            flash[:success] = "Your Record Deleted Successfully"
            redirect_to mobiledevices_path
         else
            flash[:danger] = "Not able to Delete the record"
         end
    end


    
    private
    
      def mobile_params
          params.require(:mobiledevice).permit(:device_name, :model, :serial_no, :asset_tag, :date_of_purchase, :warranty, :os, :used_by)
      end
      
    
end
