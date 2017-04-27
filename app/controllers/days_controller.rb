class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:month_id])
  end

  def new
    @day = @month.days.new
  end

  def create
    @day = @month.day.create(day_params)
    redirect_to @day
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    @day.update(day_params)
    redirect_to month_path(@day.month)
  end

  def destroy

    @day = Day.find(params[:id])
    @day.content = ""
    redirect_to @month
  end

  private
  def day_params
    params.require(:day).permit(:content)
  end
end
