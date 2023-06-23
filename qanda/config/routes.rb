Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # /でアクセスした時にquestionsのindexアクションを呼び出す
  root "questions#index"
  # 下記でquestionsのルーティングが設定される
  resources :questions do
    # questionsに紐づくanswersのルーティングが設定される
    resources :answers
  end
end
