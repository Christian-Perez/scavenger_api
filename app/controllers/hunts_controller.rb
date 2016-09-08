class HuntsController < ApplicationController
  def index
    render json: Hunt.all
  end

  def show
    hunt_id = params[:id]
    render json: populate_hunt(hunt_id)
  end

  def populate_hunt(hunt_id)
    selected_hunt = Hunt.find(hunt_id)
    populated_template = {}
    populated_template[:name] = selected_hunt.hunt_template[:name]
    populated_template[:description] = selected_hunt.hunt_template[:description]
    populated_template[:duration_min] = selected_hunt.hunt_template[:duration_min]
    populated_template[:objectives] = selected_hunt.player_objectives
    populated_template
  end
end
