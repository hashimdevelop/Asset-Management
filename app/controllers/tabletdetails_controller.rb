class TabletdetailsController < ApplicationController
    before_filter :authenticate_user!
    
    def index
        @tabletdetailss = Tabletdetail.all
         if params[:search]
            @tabletdetails = Tabletdetail.search(params[:search]).order("created_at DESC")
         else
            @tabletdetails = Tabletdetail.order("created_at DESC")
         end
         
         respond_to do |format|
             format.html
            
             format.xls # { send_data @lists.to_csv(col_sep: "\t") }
         end
        
    end

    def new
        
        @tabletdetail = Tabletdetail.new
    end
    
    def create
         @tabletdetail = Tabletdetail.create(mobile_params)
         
        if @tabletdetail.save
            flash[:success] = "Your record has been created successfully"
            redirect_to tabletdetails_path
        else
            render :new
        end
    end

    
    def edit
        @tabletdetail = Tabletdetail.find(params[:id])
    end
    
    def update
        
        @tabletdetail = Tabletdetail.find(params[:id])
        if @tabletdetail.update(mobile_params)
            flash[:success] = "Your record has been updated successfully"
            redirect_to tabletdetails_path
        else
            flash[:danger] = "Not Updated"
            render :edit
        end
    end
    
    def show
        @tabletdetail = Tabletdetail.find(params[:id])
    end
    
    def destroy
         @tabletdetail = Tabletdetail.find(params[:id])
         if @tabletdetail.destroy
            flash[:success] = "Your Record Deleted Successfully"
            redirect_to tabletdetails_path
         else
            flash[:danger] = "Not able to Delete the record"
         end
    end


    
    private
    
      def mobile_params
          params.require(:tabletdetail).permit(:device_name, :model, :serial_no, :asset_tag, :date_of_purchase, :warranty, :os, :used_by)
      end
      
    
end
