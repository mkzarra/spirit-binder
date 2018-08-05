class WhiskeysController < ApplicationController
  before_action :set_whiskey, only: [:show, :update, :destroy]

  # GET /whiskeys
  def index
    if params.key?('name')
      @whiskeys = Whiskey.all.select do |whiskey|
          whiskey.name.downcase.include? params['name'].downcase
      end 
      render json: @whiskeys
    else

      render json: Whiskey.all
    end
  end

  # GET /whiskeys/1
  def show
    @whiskey = Whiskey.find(params[:id])
    render json: @whiskey
  end

  # POST /whiskeys
  def create
    whiskey_params
    params.permit!
    @whiskey = Whiskey.new(params[:whiskeys])
    if @whiskey.save
      render json: @whiskey, status: :created, location: @whiskey
    else
      render json: @whiskey.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /whiskeys/1
  def update
    if @whiskey.update(whiskey_params)
      render json: @whiskey
    else
      render json: @whiskey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /whiskeys/1
  def destroy
    @whiskey.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whiskey
      @whiskey = Whiskey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def whiskey_params
      params.require(:whiskeys).permit(:name, :region, :age, :price, :classification, :description)
    end
end
