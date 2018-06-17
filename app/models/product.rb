class Product < ApplicationRecord
  include Filterable
  belongs_to :category

  # validations
  validates_presence_of :name

  #scope :min_price, ->(min) { where('price >= ?', min) }
  #scope :max_price, ->(max) { where('price <= ?', max) }
  scope :min_max_prices,  ->(min,max) { where('price >= ? AND price <= ?', min, max) }
  scope :category, -> (category) { where category_id: category }

  scope :order_price, -> (order) { order(price: order || "asc") }
end
