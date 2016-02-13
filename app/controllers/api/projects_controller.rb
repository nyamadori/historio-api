class Api::ProjectsController < ApplicationController
  def index
    render json: { message: 'hello!' }
  end
end
