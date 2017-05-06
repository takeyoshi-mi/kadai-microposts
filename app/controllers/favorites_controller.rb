class RelationshipsController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = User.find(params[:fav_id])
    current_user.fav(user)
    flash[:success] = 'ユーザをフォローしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:fav_id])
    current_user.unfav(user)
    flash[:success] = 'ユーザのフォローを解除しました。'
    redirect_to user
  end
end