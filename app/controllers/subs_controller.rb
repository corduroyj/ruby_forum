class SubsController < ApplicationController
  
  def index
    @subs = Sub.all
  end

  def show
    @sub = Sub.find(params[:id])
  end

  def new
    @sub = Sub.new
  end

  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      redirect_to @sub
    else
      render :new, status: :unprocessable_entiry
    end
  end

  private

  def sub_params
    params.require(:sub).permit(:name)
  end
end
