class MondetailsController < ApplicationController
    
    def index
       @monitors = Mondetail.all
    end
    
    def new
     @monitor = Mondetail.new
    end
    
    def create
        @monitor = Mondetail.create(monitor_params)
        if @monitor.save
            flash[:success] = "Record created successfully"
            redirect_to mondetails_path
        else
            render :new
        end
    end
    
    def edit
        @monitor = Mondetail.find(params[:id])
    end
    
    def update
        @monitor = Mondetail.find(params[:id])
        if @monitor.update(monitor_params)
          flash[:success] = "Your Monitor Details updated successfully"
          redirect_to mondetails_path
        else
            render :edit
        end
    end
    
    def show
        @monitor = Mondetail.find(params[:id])
        
    end
    
    def destroy
         @monitor = Mondetail.find(params[:id])
          if @monitor.destroy
              flash[:danger] = "Your record has been deleted successfully"
              redirect_to mondetails_path
          else
              flash[:danger] = "Record not deleted"
              
          end
        
    end

    
    private
    
      def monitor_params
           params.require(:mondetail).permit(:monitor, :monitor_tag, :monitor_size, :mouse, :mouse_tag, :keyboard, :keyboard_tag, :installed_os)
      end
end
