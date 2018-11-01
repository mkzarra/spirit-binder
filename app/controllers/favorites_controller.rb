class FavoritesController < OpenReadController
  before_action :set_favorite, only %i[show update destroy]

  # GET /favorites
  def show
    @favorites = current_user.whiskeys.all

    render json: @favorites
  end

  # POST /favorites
  def create
    @favorite = Favorite.new(favorite_params)

    if @favorite.save
      render json: @favorite, status: :created
    else
      render json: @favorite.error, status: :unprocessable_entity
    end
  end

  # DELETE /favorites
  def destroy
    @favorite.destroy
  end

  private
  # Use callbacks to share common set up or constraints between actions.
  def set_favorite
    if params[:id]
      @favorite = Favorite.find(params[:id])
    elsif favorite_params[:whiskey_id] && favorite_params[:user_id]
      @favorite = Favorite.find_by(whiskey_id: favorite_params[:whiskey_id], user_id: favorite_params[:user_id])
    end
  end

  # Only allow trusted params to "white list" through.
  def favorite_params
    params.require(:favorite).permit(:id, :whiskey_id, :user_id)
  end
end