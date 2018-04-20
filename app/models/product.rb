class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true

  scope :most_reviews, -> {(
    select("products.id, products.name, products.cost, products.country, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(5)
    )}

  scope :three_most_recent, -> { order(created_at: :desc).limit(3) }

  scope :made_in_usa, -> { where country: 'USA'}
end
