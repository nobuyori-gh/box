class TodolistsController < ApplicationController
  def new
  	@list = List.new
  end

  def creat
  	list = List.new(list_params) #ストロングパラメーター使用
  	list.save #DBへ保存
  	redirect_to todolist_path(list.id)
  end

  def index
    @lists = List.all
    #Listモデルの全て　listテーブルから全データを取得し@表示する
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
  end

  def destroy
    list = List.find(params[:id]) #データ(レコード)１件取得
    list.destroy #データ（レコード）を削除
    redirect_to todolists_path #List一覧画面へリダイレクト
  end

  private

  def list_params
  	params.require(:list).permit(:title, :body, :image)
  end
end
