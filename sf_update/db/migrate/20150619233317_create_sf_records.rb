class CreateSfRecords < ActiveRecord::Migration
  def up
    create_table :sf_records do |t|
    	t.integer :user_id
    	t.text :month
    	t.timestamps null: false
    end
  end

  def down
  	drop_table :sf_records
  end
end
