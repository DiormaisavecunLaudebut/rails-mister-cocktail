class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(set_params)
    @dose.cocktail_id = params[:cocktail_id]
    @dose.save ? (redirect_to cocktail_path(params[:cocktail_id])) : (render :new)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail_id)
  end

  private

  def set_params
    params.require(:dose).permit(:quantity, :ingredient_id)
  end

end
