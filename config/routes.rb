Communities::Application.routes.draw do

  resources :communities, path: "game" do
    resources :community_topics, path: "topic"
  end

  root :to => 'communities#index'
end
