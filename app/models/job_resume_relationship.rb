class JobResumeRelationship < ApplicationRecord
  belongs_to :job
  belongs_to :jobseeker_resume
end
