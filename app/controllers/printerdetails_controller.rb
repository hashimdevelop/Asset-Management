class PrinterdetailsController < ApplicationController
    
    before_filter :authenticate_user!
    def index
        @printerdetails = Printerdetail.all
         if params[:search]
            @printerdetails = Printerdetail.search(params[:search])
         else
            @printerdetails = Printerdetail.order("created_at DESC")
         end
        
    end

    def new
        
        @printerdetail = Printerdetail.new
    end
    
    def create
         @printerdetail = Printerdetail.create(printer_params)
         
        if @printerdetail.save
            flash[:success] = "Your record has been created successfully"
            redirect_to printerdetails_path
        else
            render :new
        end
    end

    
    def edit
        @printerdetail = Printerdetail.find(params[:id])
    end
    
    def update
        
        @printerdetail = Printerdetail.find(params[:id])
        if @printerdetail.update(printer_params)
            flash[:success] = "Your record has been updated successfully"
            redirect_to printerdetails_path
        else
            flash[:danger] = "Not Updated"
            render :edit
        end
    end
    
    def show
        @printerdetail = Printerdetail.find(params[:id])
    end
    
    def destroy
         @printerdetail = Printerdetail.find(params[:id])
         if @printerdetail.destroy
            flash[:success] = "Your Record Deleted Successfully"
            redirect_to printerdetails_path
         else
            flash[:danger] = "Not able to Delete the record"
         end
    end


    
    private
    
      def printer_params
          params.require(:printerdetail).permit(:device_name, :model, :serial_no, :asset_tag, :used_by)
      end
      
    
end

