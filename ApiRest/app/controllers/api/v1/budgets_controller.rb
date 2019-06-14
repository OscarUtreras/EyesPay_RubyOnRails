module Api
    module V1
        class BudgetsController < ApplicationController
            def index
                @budgets = Budget.order('created_at DESC')
                render :json => @budgets
            end

            def show
                @budgets = Budget.where(user_id: params[:id])
                render :json => @budgets
            end
        end
    end
end