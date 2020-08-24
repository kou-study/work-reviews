require "csv"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..5).each do |number|
    User.create(name: 'test_user' + number.to_s, password: 'test' + number.to_s)
end

#csvファイル読み込み

#アニメ作品
CSV.foreach('db/animation_forget.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_a_o.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end


CSV.foreach('db/animation_ka_ko_ga_go.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_sa_so_za_zo.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_ta_to_da_do.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_na_no.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_ha_ho_ba_bo_pa_po.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end


CSV.foreach('db/animation_ma_mo.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_ya_yo.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_ra_ro.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_wa.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

#映画作品
CSV.foreach('db/movie.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end
