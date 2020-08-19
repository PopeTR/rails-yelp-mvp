class Restaurant < ApplicationRecord
  @category_options = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, :inclusion => {:in => @category_options}
end
