class ScannerdetailsController < ApplicationController
    before_filter :authenticate_user!
    
    def index
        @scannerdetails = Scannerdetail.all
         if params[:search]
            @scannerdetails = Scannerdetail.search(params[:search])
         else
            @scannerdetails = Scannerdetail.order("created_at DESC")
         end
        
    end

    def new
        
        @scannerdetail = Scannerdetail.new
    end
    
    def create
         @scannerdetail = Scannerdetail.create(scanner_params)
         
        if @scannerdetail.save
            flash[:success] = "Your record has been created successfully"
            redirect_to scannerdetails_path
        else
            render :new
        end
    end

    
    def edit
        @scannerdetail = Scannerdetail.find(params[:id])
    end
    
    def update
        
        @scannerdetail = Scannerdetail.find(params[:id])
        if @scannerdetail.update(scanner_params)
            flash[:success] = "Your record has been updated successfully"
            redirect_to scannerdetails_path
        else
            flash[:danger] = "Not Updated"
            render :edit
        end
    end
    
    def show
        @scannerdetail = Scannerdetail.find(params[:id])
    end
    
    def destroy
         @scannerdetail = Scannerdetail.find(params[:id])
         if @scannerdetail.destroy
            flash[:success] = "Your Record Deleted Successfully"
            redirect_to scannerdetails_path
         else
            flash[:danger] = "Not able to Delete the record"
         end
    end


    
    private
    
      def scanner_params
          params.require(:scannerdetail).permit(:device_name, :model, :serial_no, :asset_tag, :used_by)
      end
end