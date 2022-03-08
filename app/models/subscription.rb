class Subscription < ApplicationRecord
  belongs_to :merchant
  has_many :subitems
end
