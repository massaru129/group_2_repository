class BlackboardDeadlineNotNull < ActiveRecord::Migration
  def change
    change_column :blackboards, :deadline, :datetime, null:false, default:DateTime.now
  end
end
