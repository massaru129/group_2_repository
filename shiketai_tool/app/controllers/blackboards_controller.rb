class BlackboardsController < ApplicationController
  def new
	@subject = Subject.find(params[:subject_id])
    @blackboard = @subject.blackboards.new
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @blackboard = @subject.blackboards.create(blackboard_params)
	redirect_to subject_path(@subject)
  end

  def show
    @subject = Subject.find(params[:subject_id])
    @blackboard = Blackboard.find(params[:id])
  end

  def edit
    @subject = Subject.find(params[:subject_id])
    @blackboard = @subject.blackboards.find(params[:id])
  end
  
  def update
    @subject = Subject.find(params[:subject_id])
    @blackboard = @subject.blackboards.find(params[:id])
	@blackboard.update(blackboard_params)
    redirect_to @subject
  end

  def destroy
    @subject = Subject.find(params[:subject_id])
    @blackboard = @subject.blackboards.find(params[:id])
	@blackboard.destroy
	redirect_to subject_path(@subject)
  end

  private
    def blackboard_params
	  params.require(:blackboard).permit(:title, :description, :material, :subject_id)
	end
end
