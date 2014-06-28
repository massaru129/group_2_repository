class ChangeSubjectsColumnDefinitionToText < ActiveRecord::Migration
  def change
    change_column :subjects, :description, :text
  end
end
