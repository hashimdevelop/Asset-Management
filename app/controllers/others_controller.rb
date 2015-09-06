class OthersController < ApplicationController
    before_filter :authenticate_user!
    
    def index
        @otherss = Other.all
         if params[:search]
            @others = Other.search(params[:search]).order("created_at DESC")
         else
            @others = Other.order("created_at DESC")
         end
        
    end

    def new
        
        @other = Other.new
    end
    
    def create
         @other = Other.create(other_params)
         
        if @other.save
            flash[:success] = "Your record has been created successfully"
            redirect_to others_path
        else
            render :new
        end
    end

    
    def edit
        @other = Other.find(params[:id])
    end
    
    def update
        
        @other = Other.find(params[:id])
        if @other.update(other_params)
            flash[:success] = "Your record has been updated successfully"
            redirect_to others_path
        else
            flash[:danger] = "Not Updated"
            render :edit
        end
    end
    
    def show
        @other = Other.find(params[:id])
    end
    
    def destroy
         @other = Other.find(params[:id])
         if @other.destroy
            flash[:success] = "Your Record Deleted Successfully"
            redirect_to others_path
         else
            flash[:danger] = "Not able to Delete the record"
         end
    end


    
    private
    
      def other_params
          params.require(:other).permit(:device_name, :model, :serial_no, :asset_tag, :category, :used_by)
          
          
          
      end
end