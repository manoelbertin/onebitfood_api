Rails.application.routes.draw do
  scope '/api', defaults: { format: :json }
end
