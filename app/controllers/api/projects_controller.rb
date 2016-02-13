class Api::ProjectsController < ApplicationController
  before_action :set_project, only: [:update, :destroy, :show]

  def index
    @projects = Project.all
    render json: @projects
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      render json: @project
    else
      render json: @project, status: :bad_request
    end
  end

  def show
    render json: @project
  end

  def update
    @project.update!(project_params)

    render json: @project
  end

  def destroy
    @project.destroy!

    render json: @project
  end

  private

  def project_params
    params.permit(:title, :description, :url)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
