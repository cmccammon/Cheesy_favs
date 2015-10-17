class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user, except: [:index]
  def index
    @favorites = Favorite.all
  end

  def create
    @Favorite = Favorite.new(favorite_params)
    @Favorite.user_id = current_user.id


    if @Favorite.save
      respond_to do |f|
        f.html do
          redirect_to :back
        end
        f.json do
          render json: @Favorite.to_json
        end
      end
    else
      flash[:alert] = 'Errors'
      render :back
    end
  end

  private

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:user_id, :cheese_id)
  end
end
