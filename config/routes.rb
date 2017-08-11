Rails.application.routes.draw do
  root 'welcome#show'

  get '/', to: 'welcome#show'
end
