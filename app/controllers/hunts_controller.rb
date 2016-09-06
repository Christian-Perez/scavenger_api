class HuntsController < ApplicationController
  def index
    render json: Hunt.all
  end
end
