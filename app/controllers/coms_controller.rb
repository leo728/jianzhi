class ComsController < ApplicationController
  def edit
    @com = Com.find_by(user: current_user)
  end

  def new
    # @com = current_user.com
    @com = Com.new
  end

  def create
    @com = Com.new(com_params)
    @com.user = current_user

    @com.save

    redirect_to user_jobs_path

  end

  def update
      @com = Com.find(params[:id])

      if @com.update(com_params)
        redirect_to user_jobs_path, notice: "Update Success"
      else
        render :edit
      end
    end

  private

  def com_params
    params.require(:com).permit(:com_type, :description)
  end
end
