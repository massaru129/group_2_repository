# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 時限情報を挿入
require 'date'
Period.create(period: '1限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period: '2限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period: '3限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period: '4限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period: '5限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period: '6限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period: 'その他', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))

# 曜日情報を挿入
DayOfAWeek.create(day_of_a_week: '月曜日', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
DayOfAWeek.create(day_of_a_week: '火曜日', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
DayOfAWeek.create(day_of_a_week: '水曜日', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
DayOfAWeek.create(day_of_a_week: '木曜日', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
DayOfAWeek.create(day_of_a_week: '金曜日', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
DayOfAWeek.create(day_of_a_week: '土曜日', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
DayOfAWeek.create(day_of_a_week: '集中講義', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))

# 学期情報を挿入
Semester.create(semester: '夏学期', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Semester.create(semester: '冬学期', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))


# 科目情報を挿入
Subject.create(subject_name: '数理計画と最適化', teacher: 'かっちゃん', day_of_a_week:'木曜日', period: "2限目", semester: "夏学期", description: "みぃつけた", created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Subject.create(subject_name: '国語', teacher: 'おさむ', day_of_a_week:'月曜日', period: "1限目", semester: "冬学期", description: "いつやるか？今でしょ！", created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))

# 科目情報を挿入
Blackboard.create(subject_id: '1', description:'巡回しません', title: "巡回セールスマン問題", created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db), deadline:(DateTime.now+12).to_s(:db))
Blackboard.create(subject_id: '1', description:'バナナはおやつに入りません', title: "ナップザック問題", created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db), deadline: (DateTime.now-1).to_s(:db))
Blackboard.create(subject_id: '2', description:'流行語大賞おめでとう', title: "いつやるか？", created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db), deadline: (DateTime.now+7).to_s(:db))
Blackboard.create(subject_id: '2', description:'はいはい', title: "今でしょ", created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db), deadline: (DateTime.now+2).to_s(:db))
