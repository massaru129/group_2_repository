class WelcomeController < ApplicationController
  def index
    @blackboards = Blackboard.all
  end
end
