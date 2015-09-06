class NetworkdetailsController < ApplicationController
    before_filter :authenticate_user!
    
    def index
        @networkdetailss = Networkdetail.all
       if params[:search]
            @networkdetails = Networkdetail.search(params[:search])
         else
            @networkdetails = Networkdetail.order("created_at DESC")
       end
    end
    
    def new
     @networkdetail = Networkdetail.new
    end
    
    def create
        @networkdetail = Networkdetail.create(networkdetail_params)
        if @networkdetail.save
            flash[:success] = "Record created successfully"
            redirect_to networkdetails_path
        else
            render :new
        end
    end
    
    def edit
        @networkdetail = Networkdetail.find(params[:id])
    end
    
    def update
        @networkdetail = Networkdetail.find(params[:id])
        if @networkdetail.update(networkdetail_params)
          flash[:success] = "Your Network Details updated successfully"
          redirect_to networkdetails_path
        else
            render :edit
        end
    end
    
    def show
        @networkdetail = Networkdetail.find(params[:id])
        
    end
    
    def destroy
         @networkdetail = Networkdetail.find(params[:id])
          if @networkdetail.destroy
              flash[:danger] = "Your record has been deleted successfully"
              redirect_to networkdetails_path
          else
              flash[:danger] = "Record not deleted"
              
          end
        
    end

    
    private
    
      def networkdetail_params
           params.require(:networkdetail).permit(:device_name, :model, :serial_no, :asset_tag, :used_for, :port_no)
      end
end

