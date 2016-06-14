class ScheduleItemsController < ApplicationController
  before_action :set_schedule_item, only: [:show, :update, :destroy]

  # GET /schedule_items
  def index
    @schedule_items = ScheduleItem.all

    render json: @schedule_items
  end

  # GET /schedule_items/1
  def show
    render json: @schedule_item
  end

  # POST /schedule_items
  def create
    @schedule_item = ScheduleItem.new(schedule_item_params)

    if @schedule_item.save
      render json: @schedule_item, status: :created, location: @schedule_item
    else
      render json: @schedule_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schedule_items/1
  def update
    if @schedule_item.update(schedule_item_params)
      render json: @schedule_item
    else
      render json: @schedule_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schedule_items/1
  def destroy
    @schedule_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_item
      @schedule_item = ScheduleItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def schedule_item_params
      params.require(:schedule_item).permit(:weed_day, :time_table_item_id, :class_room_id, :student_group_id, :subject_id)
    end
end
