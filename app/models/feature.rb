class Feature < ApplicationRecord
  has_many :subscriptions
  has_many :subitems
end
