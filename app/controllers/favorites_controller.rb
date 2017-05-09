class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:fav_id])
    current_user.fav(micropost)
    flash[:success] = 'micropostをお気に入りに追加しました。'
    redirect_to user_path(current_user)
  end

  def destroy
    micropost = Micropost.find(params[:fav_id])
    current_user.unfav(micropost)
    flash[:success] = 'micropostのお気に入りを解除しました。'
    redirect_to user_path(current_user)
  end

  
end