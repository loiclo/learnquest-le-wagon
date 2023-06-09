Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :user_worlds do
    resources :user_quizzes do
      resources :user_questions
    end
  end

  resources :profil

  resources :shop
  # Defines the root path route ("/")
  # root "articles#index"
end
