class DirectedsController < ApplicationController

  def index
    @directeds = Directed.all.order("created_at DESC").page(params[:page]).per(6)
    @directed = Directed.new
  end

  def create
    Directed.create(directed_params)
    redirect_to directeds_path, notice: '登録されました'
  end

  private
  def directed_params
    params.require(:directed).permit(:text, :image)
  end
end
