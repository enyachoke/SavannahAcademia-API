class ExamPeriodsController < ApplicationController
  before_action :set_exam_period, only: [:show, :update, :destroy]

  # GET /exam_periods
  def index
    @exam_periods = ExamPeriod.all

    render json: @exam_periods
  end

  # GET /exam_periods/1
  def show
    render json: @exam_period
  end

  # POST /exam_periods
  def create
    @exam_period = ExamPeriod.new(exam_period_params)

    if @exam_period.save
      render json: @exam_period, status: :created, location: @exam_period
    else
      render json: @exam_period.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exam_periods/1
  def update
    if @exam_period.update(exam_period_params)
      render json: @exam_period
    else
      render json: @exam_period.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exam_periods/1
  def destroy
    @exam_period.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_period
      @exam_period = ExamPeriod.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exam_period_params
      params.require(:exam_period).permit(:term_id, :label, :start_date, :end_date)
    end
end
