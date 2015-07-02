class CreateSfOutputReports < ActiveRecord::Migration
  def up
    create_table :sf_output_reports do |t|
    	t.integer :user_id
    	t.integer :sf_record_id
    	t.text :output_report_url
    	t.timestamps null: false
    end
  end

  def down
  	drop_table :sf_output_reports
  end
end
