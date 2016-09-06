class HuntsController < ApplicationController
  def index
    render json: Hunt.all
  end

  def show
    #render json for huntTemplate + it's Objectives
    render json: Hunt.find(params[:id])
  end
end
