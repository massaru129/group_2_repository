class Subject < ActiveRecord::Base
  has_many :blackboards, dependent: :destroy
  validates :subject_name, presence: true
  validates :teacher, presence: true
  validates :period, presence: true
  validates :semester, presence:true
  validates :day_of_a_week, presence: true
  validates :description, presence: true
end
