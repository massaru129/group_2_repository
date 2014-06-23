class SubjectsController < ApplicationController
  def new
    @subject = Subejct.new
  end

  def create
    @subject = Subject.new(subject_params)
	if @subject.save
	  redirect_to @subject
	end
  end

  def show
    @subject = Subject.find(param[:id])
  end

  def index
    @projects = Project.all
  end
end
