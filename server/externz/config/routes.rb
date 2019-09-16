Rails.application.routes.draw do
  namespace 'api' do
  namespace 'v1' do
    resources :users
    resources :students
    resources :student_skills
    resources :skills
    resources :categories
    resources :industries
    resources :businesses
    resources :projects
    resources :project_skills
    resources :posted_projects

    post '/login', to: 'auth#login'
    get '/authenticate', to: 'auth#authenticate'
  end
 end
end
