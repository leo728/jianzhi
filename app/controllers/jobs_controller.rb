class JobsController < ApplicationController
  def index
    @jobs = current_user.jobs
  end

  def show
  end

  def new
    @job = Job.new
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user

    @job.save

    redirect_to user_jobs_path
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)

    redirect_to user_jobs_path
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    flash[:alert] = "职位已删除"
    redirect_to user_jobs_path
  end

  def publish
    @job = Job.find(params[:id])
    @job.publish!
    redirect_to user_jobs_path(current_user)
  end

  def hide
    @job = Job.find(params[:id])
    @job.hide!
    redirect_to user_jobs_path(current_user)
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :wage_upper_bound, :wage_lowr_bound, :is_hidden)
  end
end
