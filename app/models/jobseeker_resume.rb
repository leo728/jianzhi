class JobseekerResume < ApplicationRecord
  belongs_to :user

  has_many :job_resume_relationships
  has_many :desired_jobs, :through => :job_resume_relationships, :source => :job



end
