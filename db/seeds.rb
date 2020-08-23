require "csv"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
(1..10).each do |number|
    User.create(name: 'test_user' + number.to_s, password: 'test' + number.to_s)
end
=end

=begin
#csvファイル読み込み  
CSV.foreach('db/movies.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end


CSV.foreach('db/animation_ki_ko_gi_go.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end
=end


CSV.foreach('db/animation_sa_so_za_zo.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_ta_to_da_do.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end

CSV.foreach('db/animation_na_no.csv') do |row|
    Movie.create(:category => row[0], :title => row[1], :company => row[2], :year => row[3], :synopsis => row[4], :image_path => row[5], :initial => row[6], :hurigana => row[7])
end


