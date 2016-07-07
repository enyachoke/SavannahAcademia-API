class GradingLevelsController < ApplicationController
  before_action :set_grading_level, only: [:show, :update, :destroy]

  # GET /grading_levels
  def index
    @grading_levels = GradingLevel.order('marks_from desc')

    render json: @grading_levels
  end

  # GET /grading_levels/1
  def show
    render json: @grading_level
  end

  # POST /grading_levels
  def create
    @grading_level = GradingLevel.new(grading_level_params)

    if @grading_level.save
      render json: @grading_level, status: :created, location: @grading_level
    else
      render json: @grading_level.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grading_levels/1
  def update
    if @grading_level.update(grading_level_params)
      render json: @grading_level
    else
      render json: @grading_level.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grading_levels/1
  def destroy
    @grading_level.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grading_level
      @grading_level = GradingLevel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grading_level_params
      params.require(:grading_level).permit(:name, :marks_from, :marks_to, :points, :comments)
    end
end
