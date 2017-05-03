class Job < ApplicationRecord
  belongs_to :user

  # has_many :jobseeker_resumes

  has_many :job_resume_relationships
  has_many :resumes, :through => :job_resume_relationships, :source => :jobseeker_resume

  def submit!(jobseeker_resume)
    resumes << jobseeker_resume
  end

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  scope :published, -> { where(is_hidden: false) }
  scope :recent, -> { order('created_at DESC') }
end
