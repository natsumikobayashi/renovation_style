# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Observer.create!(email: 'test@test', password: 'testpass', rogin_id: 'testid')
Area.create!(name: '全国' '北海道' '東北' '関東' '中部' '関西' '中国' '九州' '沖縄')
FloorPlan.create!(floor_name: '１Ｒ・１ＤＫ' '１ＬＤＫ・２ＤＫ' '２ＬＤＫ・３ＤＫ' '３ＬＤＫ・４ＤＫ' '４ＬＤＫ～')