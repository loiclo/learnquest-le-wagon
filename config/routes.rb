Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :user_worlds do
    resources :user_quizzes do
      resources :user_questions
    end
  end

  get "/check_answer/:answer_id", to: "user_questions#check_answer", as: "check_answer"
  get "/results/:quiz_id", to: "user_quizzes#process_result", as: "process_result"
  resources :profil
  resources :shop
  # Defines the root path route ("/")
  # root "articles#index"
end
