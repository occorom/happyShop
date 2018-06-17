# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category1 = Category.create(name: 'Parfum Men')
category2 = Category.create(name: 'Parfum Women')
#category1 = Category.create(name: 'Parfum')


Product.create(name: 'perfume Hugo Homme', description: 'Nice perfume and fragrance for men', price: 69.0, category_id: category1.id, image: 'hugo_femme.jpg')
Product.create(name: 'perfume Dior Homme', description: 'Nice perfume and fragrance for men', price: 89.0, category_id: category1.id, image: 'dior_homme.jpg')
Product.create(name: 'perfume Dolce Homme', description: 'Nice perfume and fragrance for men', price: 109.0, category_id: category1.id, image: 'dolce_homme.jpg')
Product.create(name: 'perfume Kalvin Homme', description: 'Nice perfume and fragrance for men', price: 99.0, category_id: category1.id, image: 'kalvin_homme.jpg')
Product.create(name: 'perfume Guerlain Homme', description: 'Nice perfume and fragrance for men', price: 150.0, category_id: category1.id, image: 'guerlain_homme.jpg')

Product.create(name: 'perfume Hugo Femme', description: 'Nice perfume and fragrance for women', price: 69.0, category_id: category2.id, image: 'hugo_femme.jpg')
Product.create(name: 'perfume Dolce Femme', description: 'Nice perfume and fragrance for women', price: 109.0, category_id: category2.id, image: 'dolce_homme.jpg')
Product.create(name: 'perfume Dior Femme', description: 'Nice perfume and fragrance for women', price: 89.0, category_id: category2.id, image: 'dior_femme.jpg')
Product.create(name: 'perfume Klavin Femme', description: 'Nice perfume and fragrance for women', price: 99.0, category_id: category2.id, image: 'kalvin_femme.jpg')
Product.create(name: 'perfume Guerlain Femme', description: 'Nice perfume and fragrance for women', price: 150.0, category_id: category2.id, image: 'guerlain_femme.jpg')

category3 = Category.create(name: 'Eau de Toilette Men')
category4 = Category.create(name: 'Eau de Toilette Women')


Product.create(name: 'Eau de toilette Hugo Homme', description: 'Nice Eau de toilette and fragrance for men', price: 79.0, category_id: category3.id, image: 'hugo_femme.jpg')
Product.create(name: 'Eau de toilette Dior Homme', description: 'Nice Eau de toilette and fragrance for men', price: 99.0, category_id: category3.id, image: 'dior_homme.jpg')
Product.create(name: 'Eau de toilette Dolce Homme', description: 'Nice Eau de toilette and fragrance for men', price: 119.0, category_id: category3.id, image: 'dolce_homme.jpg')
Product.create(name: 'Eau de toilette Kalvin Homme', description: 'Nice Eau de toilette and fragrance for men', price: 109.0, category_id: category3.id, image: 'kalvin_homme.jpg')
Product.create(name: 'Eau de toilette Guerlain Homme', description: 'Nice Eau de toilette and fragrance for men', price: 160.0, category_id: category3.id, image: 'guerlain_homme.jpg')

Product.create(name: 'Eau de toilette Hugo Femme', description: 'Nice Eau de toilette and fragrance for women', price: 79.0, category_id: category4.id, image: 'hugo_homme.jpg')
Product.create(name: 'Eau de toilette Dolce Femme', description: 'Nice Eau de toilette and fragrance for women', price: 119.0, category_id: category4.id, image: 'dolce_femme.jpg')
Product.create(name: 'Eau de toilette Dior Femme', description: 'Nice Eau de toilette and fragrance for women', price: 99.0, category_id: category4.id, image: 'dior_femme.jpg')
Product.create(name: 'Eau de toilette Klavin Femme', description: 'Nice Eau de toilette and fragrance for women', price: 109.0, category_id: category4.id, image: 'kalvin_femme.jpg')
Product.create(name: 'Eau de toilette Guerlain Femme', description: 'Nice Eau de toilette and fragrance for women', price: 160.0, category_id: category4.id, image: 'guerlain_femme.jpg')