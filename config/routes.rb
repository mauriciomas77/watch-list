Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  get 'lists/new'
  get 'lists/create'
  get 'lists/show'
  get 'lists/index'
  get 'lists', to: 'lists#index'
  get 'lists/:id', to: 'lists#show'

  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'

  get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new'
  post 'lists/:list_id/bookmarks', to: 'bookmarks#create'

  delete 'lists/:id', to: 'bookmarks#destroy'
end
