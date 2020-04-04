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
end
