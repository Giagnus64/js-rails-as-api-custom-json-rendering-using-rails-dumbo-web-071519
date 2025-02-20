class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find_by(id: params[:id])
    if bird 
      render json: bird, except: [:created_at, :updated_at]
    else
      render json: {message: "Bird Not Found"}
    end
  end

end