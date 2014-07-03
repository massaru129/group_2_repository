class CreateSubjectBlackboards < ActiveRecord::Migration
  def change
    create_table :subject_blackboards do |t|
      t.integer :subject_id
      t.integer :blackboard_id

      t.timestamps
    end
  end
end
