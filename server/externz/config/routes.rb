Rails.application.routes.draw do
  namespace 'api' do
  namespace 'v1' do
    resources :users
    resources :students
    resources :student_skills
    resources :skills
    resources :categories

    post '/login', to: 'auth#login'
    get '/profile', to: 'auth#profile'
  end
 end
end
