Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/contacts", controller: "contacts", action: "every_contact"
  post "/contacts", controller: "contacts",
  action: "create"
end