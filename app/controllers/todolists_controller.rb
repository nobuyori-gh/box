class TodolistsController < ApplicationController
  def new
  	@list = List.new
  end

  def creat
  	list = List.new(list_params)
  	list.save
  	redirect_to '/top'
  end
  private

  def list_params
  	params.require(:list).permit(:title, :body)
  end
end
