class CoursesController < ApplicationController
  def index
    @courses = Course.all
    render "index.html.erb"
  end
end
