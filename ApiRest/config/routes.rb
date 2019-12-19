Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :products
      resources :categories
      resources :budgets
      resources :users
      resources :scan
    end
  end
end
