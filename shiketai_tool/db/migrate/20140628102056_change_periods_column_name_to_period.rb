class ChangePeriodsColumnNameToPeriod < ActiveRecord::Migration
  def change
    rename_column :periods, :period_name, :period
  end
end
