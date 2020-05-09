Rails.application.routes.draw do
  get 'todolists/new'
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#creat'

  get 'todolists' => 'todolists#index'
  #URL'/todolists'を受けたら'todolists'コントローラのindexアクション実行
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
end
