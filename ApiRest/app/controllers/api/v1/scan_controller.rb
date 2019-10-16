module Api
    module V1
        class ScanController < ApplicationController
            def index
                @budgets = Budget.order('created_at DESC')
                render :json => @budgets
            end
        end
    end
end