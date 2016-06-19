class ClassTimingsController < ApplicationController
  before_action :set_class_timing, only: [:show, :update, :destroy]

  # GET /class_timings
  def index
    @class_timings = ClassTiming.all

    render json: @class_timings
  end

  # GET /class_timings/1
  def show
    render json: @class_timing
  end

  # POST /class_timings
  def create
    @class_timing = ClassTiming.new(class_timing_params)

    if @class_timing.save
      render json: @class_timing, status: :created, location: @class_timing
    else
      render json: @class_timing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /class_timings/1
  def update
    if @class_timing.update(class_timing_params)
      render json: @class_timing
    else
      render json: @class_timing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /class_timings/1
  def destroy
    @class_timing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_timing
      @class_timing = ClassTiming.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def class_timing_params
      params.require(:class_timing).permit(:name, :week_day, :student_group_id, :start_time, :end_time, :is_break)
    end
end
