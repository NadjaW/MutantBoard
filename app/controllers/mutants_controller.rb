class MutantsController < ApplicationController

  def new
    # we added @mutant = Mutant.new in the MutantController is that otherwise @mutant would be nil in our view,
    # and calling @mutant.errors.any? (mutants/new.html.erb) would throw an error.
    @mutant = Mutant.new
  end

  def create
    # render plain: params[:mutant].inspect
    @mutant = Mutant.new(mutant_params)

    if @mutant.save
      redirect_to @mutant
    else
      # The render method is used so that the @mutant object is passed back to the new template when it is rendered.
      # This rendering is done within the same request as the form submission,
      # whereas the redirect_to will tell the browser to issue another request.
      render 'new'
    end
  end

  def show
    @mutant = Mutant.find(params[:id])
  end

  def index
    @mutants = Mutant.all
  end

  def edit
    @mutant = Mutant.find(params[:id])
  end

  def update
    @mutant = Mutant.find(params[:id])

    if @mutant.update(mutant_params)
      redirect_to @mutant
    else
      render 'edit'
    end
  end

  def destroy
    @mutant = Mutant.find(params[:id])
    @mutant.destroy

    redirect_to mutants_path
  end

  private
    def mutant_params
      params.require(:mutant).permit(:name, :superpower, :cv)
    end

end
