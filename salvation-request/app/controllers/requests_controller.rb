class RequestsController < ApplicationController
    def index
        @name = "Ali"
        @requests = Request.all

    end
end
