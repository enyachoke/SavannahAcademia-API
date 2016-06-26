class SubjectMarksController < ApplicationController
  before_action :set_subject_mark, only: [:show, :update, :destroy]

  # GET /subject_marks
  def index
    @subject_marks = SubjectMark.all

    render json: @subject_marks
  end

  # GET /subject_marks/1
  def show
    render json: @subject_mark
  end

  # POST /subject_marks
  def create
    @subject_mark = SubjectMark.new(subject_mark_params)

    if @subject_mark.save
      render json: @subject_mark, status: :created, location: @subject_mark
    else
      render json: @subject_mark.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subject_marks/1
  def update
    if @subject_mark.update(subject_mark_params)
      render json: @subject_mark
    else
      render json: @subject_mark.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subject_marks/1
  def destroy
    @subject_mark.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_mark
      @subject_mark = SubjectMark.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subject_mark_params
      params.require(:subject_mark).permit(:exam_period_id, :subject_id, :student_id, :marks, :points)
    end
end
