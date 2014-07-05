class SubjectHasManyblackboards < ActiveRecord::Migration
  def change
    drop_table :blackboards
	drop_table :subjects


	create_table :subjects do |t|
	  t.string :subject_name, null:false
	  t.string :teacher, null:false
	  t.string :day_of_a_week, null:false
	  t.string :period, null:false
	  t.string :semester, null:false
	  t.text :description, null:false
	  t.timestamps
	end

	create_table :blackboards do |t|
	  t.string :title, nul:false
	  t.string :description, null:false
	  t.belongs_to :subject
	  t.timestamps
	end
  end
end
