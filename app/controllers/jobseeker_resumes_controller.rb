class JobseekerResumesController < ApplicationController
  def index
    @job = Job.find(params[:job_id])
    @resumes = @job.resumes.order('created_at DESC')
  end

  def new
    @jobseeker_resume = JobseekerResume.new
  end

  def create
    @jobseeker_resume = JobseekerResume.new(jobseeker_resume_params)
    @jobseeker_resume.user = current_user

    @jobseeker_resume.save

    redirect_to jobseeker_jobs_path, notice: "Create Success"
  end

  def edit
    @jobseeker_resume = JobseekerResume.find_by(user: current_user)
  end

  def update
    @jobseeker_resume = JobseekerResume.find(params[:id])

    if @jobseeker_resume.update(jobseeker_resume_params)
      redirect_to jobseeker_jobs_path, notice: "Update Success"
    else
      render :edit
    end
  end

  private

  def jobseeker_resume_params
    params.require(:jobseeker_resume).permit(:gender, :birth, :tel, :email)
  end
end
