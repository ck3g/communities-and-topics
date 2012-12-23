Communities::Application.routes.draw do
  resources :communities, path: "game" do

  end

  root :to => 'communities#index'
end
