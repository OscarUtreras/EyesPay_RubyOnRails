module Api
    module V1
        class BudgetsController < ApplicationController

            def show
                @budgets = Budget.where(user_id: params[:id])
                render :json => @budgets
            end

            def update
                budget = Budget.find(params[:id])
                if budget.update_attributes(budget_params)
                    render json: {status: 'SUCCESS', message: 'Updated budget', data: budget}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Budget not updated', data: budget.errors}, status: :unprocessable_entity
                end
            end

            def budget_params
                params.permit(:max)
            end

        end
    end
end