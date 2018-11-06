class ExpressionsController < ApplicationController
  def index
    @expressions = Expression.all
    render "index.html.erb"
  end
  def show
    @expressions = Expression.where(course_id: params[:id])
    render "show.html.erb"
  end
end
