class MutantsController < ApplicationController

  def new
  end

  def create
    #render plain: params[:mutant].inspect
    @mutant = Mutant.new(mutant_params)
    @mutant.save
    redirect_to @mutant
  end

  def show
    @mutant = Mutant.find(params[:id])
  end

  def index
    @mutants = Mutant.all
  end

  private
    def mutant_params
      params.require(:mutant).permit(:name, :superpower, :cv)
    end

end
