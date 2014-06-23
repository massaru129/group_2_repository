class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
	if @subject.save
	  redirect_to @subject
	end
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def index
    @subjects = Subject.all
  end

  private
    def subject_params
	  params.require(:subject).permit(:subject_name, :teacher_id, :day_of_a_week_id, :period_id, :semester_id, :description)
	end
end
