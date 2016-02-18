class SnapshotsController < ApplicationController
  before_action :set_snapshot, only: [:show, :update, :destroy]

  def index
    @snapshots = Snapshot.all
    render json: @spapshots
  end

  def show
    render json: @snapshot
  end

  def create
    @snapshot = Snapshot.create!(snapshot_params)
    render json: @snapshot
  end

  def update
    @snapshot.update!(snapshot_params)
    render json: @snapshot
  end

  def destroy
    @snapshot.destroy!
    render json: @snapshot
  end

  private

  def snapshot_params

  end

  def set_snapshot
    @snapshot = Snapshot.find(params[:id])
  end
end
