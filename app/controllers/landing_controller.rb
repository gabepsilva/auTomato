class LandingController < ApplicationController

  def index

    @projects = Project.all
    @changes = Change.all

  end

  def new
  end

  def create
  end
end
