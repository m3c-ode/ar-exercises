class Store < ActiveRecord::Base
  has_many :employees
  # validates :name, :length => {minimum: 3}
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :carries_at_least_one_apparel

  def carries_at_least_one_apparel ()
    # unless mens_apparel.present? && womens_apparel.present?
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, "or women's apparel need to be true")
      errors.add(:womens_apparel,"or men'S apparel need to be true")
    end
  end
end
