class StudentGroupsController < ApplicationController
  before_action :set_student_group, only: [:show, :update, :destroy]

  # GET /student_groups
  def index
    @student_groups = StudentGroup.all

    render json: @student_groups
  end

  # GET /student_groups/1
  def show
    render json: @student_group
  end

  # POST /student_groups
  def create
    @student_group = StudentGroup.new(student_group_params)

    if @student_group.save
      render json: @student_group, status: :created, location: @student_group
    else
      render json: @student_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /student_groups/1
  def update
    if @student_group.update(student_group_params)
      render json: @student_group
    else
      render json: @student_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_groups/1
  def destroy
    @student_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_group
      @student_group = StudentGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_group_params
      params.require(:student_group).permit(:name, :year_id, :group_teacher_id,:class_room_id)
    end
end
