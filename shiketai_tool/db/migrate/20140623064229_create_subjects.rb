class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
	  t.string :name, null:false
	  t.string :teacher_id, null:false
	  t.integer :day_of_a_week_id, null:false
	  t.integer :period_id, null:false
	  t.integer :semester_id, null:false
	  t.string :description, null:false
				   

      t.timestamps
    end
  end
end
