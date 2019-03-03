Rails.application.routes.draw do
  root "try_uiza#index"

  namespace :api do
    namespace :v1 do
      get "/try_uiza", to: "try_uiza#execute"
    end
  end
end
