class CreateSfMasterLists < ActiveRecord::Migration
  def up
    create_table :sf_master_lists do |t|
    	t.text :master_list_url
    	t.integer :user_id
    	t.integer :sf_record_id
    	t.timestamps null: false
    end
  end

  def down
   drop_table :sf_master_lists
  end
end

