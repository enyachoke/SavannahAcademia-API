class ClassRoomSubjectsController < ApplicationController
  before_action :set_class_room_subject, only: [:show, :update, :destroy]

  # GET /class_room_subjects
  def index
    @class_room_subjects = ClassRoomSubject.all

    render json: @class_room_subjects
  end

  # GET /class_room_subjects/1
  def show
    render json: @class_room_subject
  end

  # POST /class_room_subjects
  def create
    @class_room_subject = ClassRoomSubject.new(class_room_subject_params)

    if @class_room_subject.save
      render json: @class_room_subject, status: :created, location: @class_room_subject
    else
      render json: @class_room_subject.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /class_room_subjects/1
  def update
    if @class_room_subject.update(class_room_subject_params)
      render json: @class_room_subject
    else
      render json: @class_room_subject.errors, status: :unprocessable_entity
    end
  end

  # DELETE /class_room_subjects/1
  def destroy
    @class_room_subject.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_room_subject
      @class_room_subject = ClassRoomSubject.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def class_room_subject_params
      params.require(:class_room_subject).permit(:subject_id, :class_room_id,:teacher_id)
    end
end
