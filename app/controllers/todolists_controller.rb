class TodolistsController < ApplicationController
  def new
  	@list = List.new
  end

  def creat
  	list = List.new(list_params)
  	list.save
  	redirect_to todolist_path(list.id)
  end

  def index
    @lists = List.all
    #Listモデルの全て　listテーブルから全データを取得し@表示する
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def list_params
  	params.require(:list).permit(:title, :body)
  end
end
