class JobsController < ApplicationController
  def index
    @jobs = current_user.jobs
  end

  def new
    # @com = current_user.com
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user

    @job.save

    redirect_to user_jobs_path

  end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end
end
