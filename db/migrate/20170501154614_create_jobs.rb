class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.integer :wage_upper_bound
      t.integer :wage_lowr_bound

      t.timestamps
    end
  end
end
