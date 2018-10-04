Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'
  devise_for :trainees
  as :trainee do
  get 'trainees/edit' => 'devise/registrations#edit', :as => 'edit_trainee_registration'    
  put 'trainees' => 'devise/registrations#update', :as => 'trainee_registration'            
  end
  devise_for :trainers
  as :trainer do
  get "trainers/edit" => "devise/registrations#edit", :as => "edit_trainer_registration"   
  put "trainers" => "devise/registrations#update", :as => "trainer_registration"            
  end
  namespace :trainee do
  	resources :courses, only:[:show] do
  		resources :subjects, only:[:index, :show, :update]
  	end
  end
  namespace :trainer do
  	resources :courses do
    	resources :subjects
      resources :assign_trainees
      resources :assign_trainers
      resources :course_subjects
      resource :finish_course, only:[:update]
    end
  end
  namespace :constructor do
  	resources :subjects
  end
end
