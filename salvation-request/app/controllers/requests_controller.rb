class RequestsController < ApplicationController
    def index
        @name = "Ali"
        @requests = Request.all

    end

    def show
        @request = Request.find(params[:id])
    end

    def new
        @request = Request.new
    end

    def create 
        @request = Request.new(request_params)
        @request.save

         redirect_to @request
    end

    def edit
        @request = Request.find(params[:id])
    end

    def update
        request = Request.find(params[:id])
        request.update(request_params)
        
        redirect_to requests_path

    end

    def destroy
        Request.find(params[:id]).destroy
      
        redirect_to requests_path
      end
        
  

    private
    def request_params
         params.require(:request).permit(:first_name, :last_name, :street, :city, :zip_code, :phone)
    end
end
