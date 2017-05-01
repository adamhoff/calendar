class DaysController < ApplicationController
  def index
    @days = Day.order(:date)
  end

  def show
    @day = Day.find(params[:month_id])
  end

  def new
    @month = Month.find(params[:month_id])
    @day = @month.days.new
  end

  def create
    @month = Month.find(params[:month_id])
    @day = @month.days.create(day_params)
    redirect_to month_path(@month)
  end

  def edit
    @month = Month.find(params[:month_id])
    @day = Day.find(params[:id])
  end

  def update
    @month = Month.find(params[:month_id])
    @day = Day.find(params[:id])
    @day.update(day_params)
    redirect_to month_path(@month)
  end

  def destroy
    @day = Day.find(params[:id])
    @day.content = ""
    redirect_to @month
  end

  private
  def day_params
    params.require(:day).permit(:content, :content1, :content2, :content3, :month_id)
  end
end
