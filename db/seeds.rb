# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Observer.find_by(email: 'test@test') == nil
  Observer.create!(email: 'test@test', password: 'testpass', login_id: 'testid')
end

Area.create!(name: '全国')
Area.create!(name: '北海道')
Area.create!(name: '東北')
Area.create!(name: '関東')
Area.create!(name: '中部')
Area.create!(name: '関西')
Area.create!(name: '中国')
Area.create!(name: '九州')
Area.create!(name: '沖縄')

save_floor_plan_list = [
  {floor_name: '１Ｒ・１ＤＫ'},
  {floor_name: '１ＬＤＫ・２ＤＫ'},
  {floor_name: '２ＬＤＫ・３ＤＫ'},
  {floor_name: '３ＬＤＫ・４ＤＫ'},
  {floor_name: '４ＬＤＫ～'}
]

FloorPlan.create!(save_floor_plan_list)