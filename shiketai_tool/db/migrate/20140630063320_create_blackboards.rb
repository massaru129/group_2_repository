class CreateBlackboards < ActiveRecord::Migration
  def change
    create_table :blackboards do |t|
	  t.string :title, :string, null:false
	  t.string :description, :string, null:false
      t.timestamps
    end
  end
end
