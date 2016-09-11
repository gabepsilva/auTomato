class LandingController < ApplicationController

  def index

    @projects = Project.all
    @changes = Change.all.includes(:project).includes(:owner)
    @changes_calendar = @changes.paginate(page: params[:page], per_page: 5).order('implementation_date DESC')

    @landing = Landing.first
    @landing.links_to_display = %i(new_project new_change)

  end

  def new
  end

  def create
  end
end
