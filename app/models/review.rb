class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :rating, :presence => true
  validates :content_body, length: { minimum: 50, maximum: 250 }
  validates_inclusion_of :rating, :in => 1..5
end
