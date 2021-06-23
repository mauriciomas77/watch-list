class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
  end

  def show
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all
  end

  private

  def list_params
    params.require(:list).permit(:list_name)
  end
end
