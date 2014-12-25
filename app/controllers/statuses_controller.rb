class StatusesController < ApplicationController
  before_action :require_user, only: [:new, :create]

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    @status.creator = current_user

    if @status.save
      flash[:notice] = 'Your status was posted'
      redirect_to user_path(@status.creator)
    else
      render :new
    end
  end

  def show
    @status = Status.find(params[:id])
  end

  private

  def status_params
    params.require(:status).permit(:body)
  end
end