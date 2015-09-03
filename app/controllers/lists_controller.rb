class ListsController < ApplicationController
    
     def new
       @list = List.new 
     end
    
    def index
       
        #@listss = List.all
         #@lists = List.paginate(page: params[:page], per_page: 2)
         if params[:search]
            @listss = List.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 2)
         else
            @listss = List.order("created_at DESC").paginate(page: params[:page], per_page: 2)
         end
         
         respond_to do |format|
             format.html
             format.csv { send_data @lists.to_csv }
             format.xls # { send_data @lists.to_csv(col_sep: "\t") }
         end
        
        
    end
    
    def create
        @lists = List.create(asset_params)
        
        if @lists.save
            flash[:success] = "Asset has been created successfully"
             redirect_to lists_path
        else
            render :new
        end
    end
    
    def edit
        @list = List.find(params[:id])
    end
    
    def update
        @list = List.find(params[:id])
        if @list.update(asset_params)
            flash[:success] = "Your Asset has been updated Successfully"
            redirect_to list_path(@list)
        else
            render :edit
        end
    end
   
    
     def show
          @list = List.find(params[:id]) 
     end
     
     def destroy
          @list = List.find(params[:id])
          if @list.destroy
              flash[:danger] = "Your record has been deleted successfully"
          else
              flash[:danger] = "Record not deleted"
          end
     end
     
     def welcome
         
     end
     
    
    private
      
      def asset_params
          params.require(:list).permit(:name, :model, :serial_no, :asset_tag, :warranty, :date_of_purchase)
      end
end
