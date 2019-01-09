class VideobeamsController < ApplicationController
  before_action :set_videobeam, only: [:show, :update, :destroy]

  # GET /videobeams
  def index
    @videobeams = Videobeam.all

    render json: @videobeams
  end

  # GET /videobeams/1
  def show
    render json: @videobeam
  end

  # POST /videobeams
  def create
    @videobeam = Videobeam.new(videobeam_params)

    if @videobeam.save
      render json: @videobeam, status: :created, location: @videobeam
    else
      render json: @videobeam.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /videobeams/1
  def update
    if @videobeam.update(videobeam_params)
      render json: @videobeam
    else
      render json: @videobeam.errors, status: :unprocessable_entity
    end
  end

  # DELETE /videobeams/1
  def destroy
    @videobeam.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videobeam
      @videobeam = Videobeam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def videobeam_params
      params.require(:videobeam).permit(:code)
    end
end
