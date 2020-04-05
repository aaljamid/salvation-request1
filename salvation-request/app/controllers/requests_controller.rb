class RequestsController < ApplicationController

    def index
        @name = "User 01"
        @requests = Request.all
    #    @requests = current_user.requests.all
    end

    def show
        @request = Request.find(params[:id])
    end

end
