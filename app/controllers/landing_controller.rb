class LandingController < ApplicationController

  def index

    @projects = Project.all
    @changes = Change.all
    @changes_calendar = Change.paginate(page: params[:page], per_page: 5).order('implementation_date DESC')

  end

  def new
  end

  def create
  end
end
