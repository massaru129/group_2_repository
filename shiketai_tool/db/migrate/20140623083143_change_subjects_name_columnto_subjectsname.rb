class ChangeSubjectsNameColumntoSubjectsname < ActiveRecord::Migration
  def change
    rename_column :subjects, :name, :subject_name
  end
end
