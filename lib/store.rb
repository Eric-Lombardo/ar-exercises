class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3, message: "--> must be minimum 3 characters"}
  validates :annual_revenue, numericality: {greater_than: 0, message: "--> must be higher than zero"}
  validate :men_and_or_women_apparel

  def men_and_or_women_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:mens_apparel, "--> Must be true and/or womens must be true")
      errors.add(:womens_apparel, "--> Must be true and/or mens must be true")
    end
  end
end
