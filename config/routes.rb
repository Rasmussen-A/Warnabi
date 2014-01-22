Warnabi::Application.routes.draw do
  resources :products do
    resources :materials
  end

  root :to => 'products#index'
end
