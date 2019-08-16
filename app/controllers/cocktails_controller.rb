class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(set_params)
    @cocktail.save ? (redirect_to cocktail_path(@cocktail)) : (render :new)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_params
    params.require(:cocktail).permit(:name)
  end
end
