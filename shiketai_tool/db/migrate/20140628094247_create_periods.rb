class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :period_name, null:false

      t.timestamps
    end
  end
end
