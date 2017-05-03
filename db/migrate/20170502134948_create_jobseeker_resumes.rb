class CreateJobseekerResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :jobseeker_resumes do |t|
      t.integer :user_id
      t.integer :gender
      t.string :birth
      t.string :tel
      t.string :email

      t.timestamps
    end
  end
end
