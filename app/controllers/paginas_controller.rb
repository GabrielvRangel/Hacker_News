class PaginasController < ApplicationController
  def index
      require_relative 'filters_controller'
      filter = Filter.new
      filter.topstories(5)
  end
end
