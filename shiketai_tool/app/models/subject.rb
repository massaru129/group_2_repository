class Subject < ActiveRecord::Base
  validates :subject_name, presence: true
  validates :teacher_id, presence: true
  validates :period_id, presence: true
  validates :semester_id, presence:true
  validates :day_of_a_week_id, presence: true
  validates :description, presence: true
end
