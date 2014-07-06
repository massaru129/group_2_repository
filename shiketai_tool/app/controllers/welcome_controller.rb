class WelcomeController < ApplicationController
  def index
    @blackboards = Blackboard.all
	gon.blackboards = @blackboards

  end
end
