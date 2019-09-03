# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Drink.delete_all
Drink.create(name: 'オレンジジュース', price: 100, image: open("#{Rails.root}/db/fixtures/orange.png"))
Drink.create(name: 'アップルジュース', price: 120, image: open("#{Rails.root}/db/fixtures/apple.png"))
Drink.create(name: 'グレープジュース', price: 130, image: open("#{Rails.root}/db/fixtures/grape.png"))
Drink.create(name: 'ピーチジュース', price: 140, image: open("#{Rails.root}/db/fixtures/peach.png"))
Drink.create(name: '緑茶', price: 150, image: open("#{Rails.root}/db/fixtures/greentea.png"))
Drink.create(name: 'むぎ茶', price: 160, image: open("#{Rails.root}/db/fixtures/barleytea.png"))

Money.delete_all
Money.create(name: '千円', price: 1000)
Money.create(name: '五百円', price: 500)
Money.create(name: '百円', price: 100)
Money.create(name: '五十円', price: 50)
Money.create(name: '十円', price: 10)