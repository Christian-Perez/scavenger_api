class HuntsController < ApplicationController
  def index
    render json: Hunt.all
  end

  def show
    hunt_id = params[:id]
    render json: populate_hunt(hunt_id)
  end

  def update
    @player_objective = PlayerObjective.find(params[:id])
    if @player_objective.update_attributes(hunt_params)
      render json: PlayerObjective.find(@player_objective.id)
      # render json: {test: 'test yes'}
    else
      # render json: PlayerObjective.where(hunt_id: @player_objective.id)
      render json: {test: 'test no'}
    end
  end

  def populate_hunt(hunt_id)
    selected_hunt = Hunt.find(hunt_id)

    populated_template = {}
    populated_template[:name] = selected_hunt.hunt_template[:name]
    populated_template[:description] = selected_hunt.hunt_template[:description]
    populated_template[:duration_min] = selected_hunt.hunt_template[:duration_min]

    populated_template[:player_objectives] = PlayerObjective.where(hunt_id: hunt_id)
    populated_template[:objectives] = selected_hunt.hunt_template.objectives
    populated_template
  end
end

def hunt_params
  params.permit(:player_objective_id, :completed)
end
