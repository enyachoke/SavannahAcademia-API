class TimeTableItemsController < ApplicationController
  before_action :set_time_table_item, only: [:show, :update, :destroy]

  # GET /time_table_items
  def index
    @time_table_items = TimeTableItem.all

    render json: @time_table_items
  end

  # GET /time_table_items/1
  def show
    render json: @time_table_item
  end

  # POST /time_table_items
  def create
    @time_table_item = TimeTableItem.new(time_table_item_params)

    if @time_table_item.save
      render json: @time_table_item, status: :created, location: @time_table_item
    else
      render json: @time_table_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /time_table_items/1
  def update
    if @time_table_item.update(time_table_item_params)
      render json: @time_table_item
    else
      render json: @time_table_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /time_table_items/1
  def destroy
    @time_table_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_table_item
      @time_table_item = TimeTableItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def time_table_item_params
      params.require(:time_table_item).permit(:start_time, :end_time, :item_type)
    end
end
