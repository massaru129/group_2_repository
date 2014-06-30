class CreateBlackboards < ActiveRecord::Migration
  def change
    create_table :blackboards do |t|

      t.timestamps
    end
  end
end
