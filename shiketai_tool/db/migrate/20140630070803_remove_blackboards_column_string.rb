class RemoveBlackboardsColumnString < ActiveRecord::Migration
  def change
    remove_column :blackboards, :string
  end
end
