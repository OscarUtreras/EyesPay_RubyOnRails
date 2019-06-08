module Api
    module V1
        class CategoriesController < ApplicationController
            def index
                @categories = Category.order('created_at DESC')
                render :json => @categories
            end
        end
    end
end