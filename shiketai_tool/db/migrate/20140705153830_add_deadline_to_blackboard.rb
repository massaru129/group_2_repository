class AddDeadlineToBlackboard < ActiveRecord::Migration
  def change
    add_column :blackboards, :deadline, :datetime
  end
end
