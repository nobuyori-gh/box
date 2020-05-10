Rails.application.routes.draw do
  get 'todolists/new'
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#creat'

  get 'todolists' => 'todolists#index'
  #URL'/todolists'を受けたら'todolists'コントローラのindexアクション実行
  get 'todolists/:id' => 'todolists#show', as: 'todolist'

  get 'todolists/:id/edit' => 'todolists#edit', as:'edit_todolist'

  patch 'todolists/:id' => 'todolists#update', as:'update_todolist'

  delete 'todolists/:id' => 'todolists#destroy', as:'destroy_todolist'
end
