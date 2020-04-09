class RequestsController < ApplicationController
    before_action :authenticate_user! 
    before_action :find_request, except: [:index, :new, :create]
    before_action :user_name 


    def index
       
        # @requests = Request.all
        # @users = User.all
        if user_signed_in? && current_user.role == "admin"
          @requests = User.joins(:requests).select("requests.*","users.*")
          

          
         
        else
          @requests = current_user.requests.all
        end
    end

    def show
        # @request = Request.find(params[:id])

        if @request.user != current_user
            flash[:notice] = 'Not allowed!'
            redirect_to requests_path
          end
    end


    def new
        
        @request = Request.new
    end

    def create 
        # @request = Request.new(request_params)
        # @request.save
        #  redirect_to @request

        @request = Request.new(request_params)

        @request.user = current_user
    
        if @request.save
          redirect_to @request
        else
          render 'new'
        end

    end

    def edit
        @request = Request.find(params[:id])
    end

    def update
        request = Request.find(params[:id])
        request.update(request_params)
        
        redirect_to requests_path

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
         params.require(:request).permit(:request_type, :request_description, :request_status)
    end

    def find_request
        @request = Request.find(params[:id])
        
      end

      def user_name 
        @user = User.find_by id:current_user
      end
end
