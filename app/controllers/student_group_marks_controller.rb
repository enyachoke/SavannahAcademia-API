class StudentGroupMarksController < ApplicationController
  before_action :set_student_group_mark, only: [:show, :update, :destroy]

  # GET /student_group_marks
  def index
    @student_group_marks = StudentGroupMark.all

    render json: @student_group_marks
  end

  # GET /student_group_marks/1
  def show
    render json: @student_group_mark
  end

  # POST /student_group_marks
  def create
    @student_group_mark = StudentGroupMark.new(student_group_mark_params)

    if @student_group_mark.save
      render json: @student_group_mark, status: :created, location: @student_group_mark
    else
      render json: @student_group_mark.errors, status: :unprocessable_entity
    end
  end

  def save_all
    mark_params = params.require(:student_group_mark)
                        .permit(marks: [:id, :student_id, :class_room_subject_id, :student_group_id,
                                        :exam_period_id, :marks, :points, :comments])
    marks = []
    mark_params[:marks].map do |mark|
      db_mark = StudentGroupMark.where(id: mark[:id]).take
      marks << if db_mark
                 db_mark.update(mark)
               else
                 StudentGroupMark.create(mark)
               end
    end
    render json: marks
  end

  def existing
    @student_group_marks = StudentGroupMark.where(student_group_id: params[:student_group_id])
                                           .where(exam_period_id: params[:exam_period_id])
                                           .where(class_room_subject_id: params[:class_room_subject_id])
    render json: @student_group_marks
  end

  # PATCH/PUT /student_group_marks/1
  def update
    if @student_group_mark.update(student_group_mark_params)
      render json: @student_group_mark
    else
      render json: @student_group_mark.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_group_marks/1
  def destroy
    @student_group_mark.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_student_group_mark
    @student_group_mark = StudentGroupMark.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def student_group_mark_params
    params.require(:student_group_mark).permit(:exam_period_id, :student_id, :class_room_subject_id, :student_group_id, :marks, :points, :comments)
  end
end
