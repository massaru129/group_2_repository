class BlackboardsController < ApplicationController
  def new
    @blackboard = Blackboard.new
  end

  def create
    @blackboard = Blackboard.new(blackboard_params)	
    if @blackboard.save
      redirect_to @blackboard
	else
	  render 'new'
	end
  end

  def index
    @blackboards = Blackboard.all
  end

  def show
    @blackboard = Blackboard.find(params[:id])
  end

  def edit
    @blackboard = Blackboard.find(params[:id])
  end

  def update
    @blackboard = Blackboard.find(params[:id])
    if @blackboard.update(blackboard_params)
      redirect_to @blackboard
    else
      render 'edit'
    end
  end

  def destroy
    @blackboard = Blackboard.find(params[:id])
	@blackboard.destroy
	redirect_to blackboards_path
  end

  private
    def blackboard_params
	  params.require(:blackboard).permit(:title, :description, :material)
	end
end
