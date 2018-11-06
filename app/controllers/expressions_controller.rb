class ExpressionsController < ApplicationController
  def index
    @expressions = Expression.all
    render "index.html.erb"
  end
end
