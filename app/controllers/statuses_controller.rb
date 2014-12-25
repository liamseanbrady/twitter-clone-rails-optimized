class StatusesController < ApplicationController
  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)

    if @status.save
      flash[:notice] = 'Your status was posted'
      redirect_to user_path(@status.creator)
    else
      render :new
    end
  end

  def show

  end

  private

  def status_params
    params.require(:status).permit(:body)
  end
end