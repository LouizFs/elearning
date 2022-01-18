class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @courses = courses.limit(3)
    @latest_courses = courses.limit(3).order(created_at: :desc)
  end

  private 

  def courses
    @courses ||= Course.all
  end
end
