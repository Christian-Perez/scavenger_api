class HuntTemplatesController < ApplicationController

  def index
    render json: HuntTemplate.all
  end

  def show
    # render json of hunt template + all it's objectives
    template_id = params[:id]
    # user_id = params[:id]
    # rendered_template = HuntTemplate.find(template_id)
    render json: populate_template(template_id)
  end

  def populate_template(hunt_template_id)
    hunt_template = HuntTemplate.find(hunt_template_id)
    populated_template = {}
    populated_template[:name] = hunt_template[:name]
    populated_template[:description] = hunt_template[:description]
    populated_template[:duration_min] = hunt_template[:duration_min]
    populated_template[:objectives] = Objective.where(hunt_template_id: hunt_template_id)
    populated_template
  end
end
