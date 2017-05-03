class CreateJobResumeRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :job_resume_relationships do |t|
      t.integer :job_id
      t.integer :jobseeker_resume_id

      t.timestamps
    end
  end
end
