class Jobseeker::JobsController < ApplicationController
  def index
    @jobs = Job.where(is_hidden: false)
  end

  def submit
    @job = Job.find(params[:id])
    @jobseeker_resume = current_user.jobseeker_resume
    @job.submit!(@jobseeker_resume)
    redirect_to jobseeker_jobs_path
  end

end
