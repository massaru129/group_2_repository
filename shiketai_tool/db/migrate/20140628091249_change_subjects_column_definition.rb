class ChangeSubjectsColumnDefinition < ActiveRecord::Migration
  def change
    change_column :subjects, :day_of_a_week, :string
    change_column :subjects, :period, :string
	change_column :subjects, :semester, :string
  end
end
