Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'
  devise_for :trainees, :skip => [:registrations], controllers: { omniauth_callbacks: 'trainees/omniauth_callbacks' }
  devise_for :trainers, :skip => [:registrations]

  resources :trainee_tests, only:[:show, :index, :update, :create]
  post "/trainee_tests", to: "trainee_tests#create"

  match "/trainees/:id/finish_signup", to: "trainees#finish_signup", via: [:get, :patch], as: :finish_signup
  namespace :trainee do
  	resources :courses, only:[:show] do
  		resources :subjects, only:[:index, :show, :update]
  	end
  end
  namespace :trainer do
  	resources :courses do
      resources :subjects do
        resources :rate_students
        resource :add_task, only:[:update]
      end
      resources :trainee_tests, only:[:index, :show, :edit]
      patch "/trainee_tests/:id/edit", to: "trainee_tests#edit"
      resources :assign_trainees
      resources :assign_trainers
      resources :course_subjects
      resource :finish_course, only:[:update]
    end
  end
  namespace :constructor do
  	resources :subjects
  end
  resources :courses do
    resources :notifications
  end
end
