class CreateDayOfAWeeks < ActiveRecord::Migration
  def change
    create_table :day_of_a_weeks do |t|
      t.string :day_of_a_week, null:false

      t.timestamps
    end
  end
end
