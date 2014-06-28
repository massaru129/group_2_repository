class RenameSubjectsColumns < ActiveRecord::Migration
  def change
    rename_column :subjects, :teacher_id, :teacher
    rename_column :subjects, :day_of_a_week_id, :day_of_a_week
	rename_column :subjects, :period_id, :period
	rename_column :subjects, :semester_id, :semester 
  end
end
