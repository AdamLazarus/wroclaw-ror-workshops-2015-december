Rails.application.routes.draw do

  devise_for :users
  concern :subjectable do
    get :subjects
  end

  resources :students, :teachers, concerns: :subjectable

  namespace :reports, as: :report do
    get :subjects
  end

  root "visitors#index"
end
