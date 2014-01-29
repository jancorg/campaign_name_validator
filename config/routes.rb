CampaignNameValidator::Application.routes.draw do
  get "validation/index"
  post "validation/validate"

  root :to => 'validation#index', :as => 'validation'
end
