class BlackboardsController < ApplicationController
  def new
    @blackboard = Blackboard.new
  end

  def create
    @blackboard = Blackboard.new(blackboard_params)
	@subject = Subject.find(@blackboard.subject_id)
	if @blackboard.save
	  redirect_to @subject
	else
	  render 'new'
	end
  end
  
  def show
    @blackboard = Blackboard.find(params[:id])
  end

  def index
    @blackboards = Blackboard.all
  end

  def edit
    @blackboard = Blackboard.find(params[:id])
	@subject = Subject.find(@blackboard.subject_id)
  end

  def update
    @blackboard = Blackboard.find(params[:id])
	@subject = Subject.find(@blackboard.subject_id)
    if @blackboard.update(blackboard_params)
      redirect_to @subject
    else
      render 'edit'
    end
  end
  
  def destroy
    @blackboard = Blackboard.find(params[:id])
	@subject = Subject.find(@blackboard.subject_id)
    @blackboard.destroy
    redirect_to @subject
  end

  private
    def blackboard_params
	  params.require(:blackboard).permit(:title, :description, :material, :subject_id)
	end

end
