class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @cocktails.each do |cocktail|
      if cocktail.photo_url
        @photo = cocktail.photo_url
      else
        @photo = 'photo.png'
      end
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.photo_url = @cocktail.photo.url
    @cocktail.save
    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end
end
