# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 時限情報を挿入
require 'date'
Period.create(period_name: '1限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period_name: '2限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period_name: '3限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period_name: '4限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period_name: '5限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period_name: '6限', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
Period.create(period_name: 'その他', created_at: DateTime.now.to_s(:db), updated_at:DateTime.now.to_s(:db))
