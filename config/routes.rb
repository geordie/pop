Pop::Application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  resources :teams

  get 'projects/status_index'
  resources :projects

  get 'reports/build'

  resources :team_updates
  resources :project_imports
  resources :jira_sessions
  resources :jira_epic
  resources :reports

  resources :work_items do
      collection do
        get :objective
        put :bulk_update_objective
      end
  end

  resources :screenshots, only: [:new, :create, :index, :destroy]

  get 'analytics/objectives'
  get 'analytics/products'
  get 'analytics/products_by_week'
  get 'analytics/projects'
  get 'analytics/projects_by_week'
  get 'analytics/effort_by_objective'
  get 'analytics/effort_by_product'
  get 'analytics/project_effort_by_objective'
  get 'analytics/weekly_summary'

  post 'teams/copy_epics'
  post 'webhooks/jira_issues'

  root :to => 'work_items#index'

end
