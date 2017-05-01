class CreateComs < ActiveRecord::Migration[5.0]
  def change
    create_table :coms do |t|
      t.string :com_type
      t.text :description
      t.string :com_addr
      t.string :com_tel

      t.timestamps
    end
  end
end
