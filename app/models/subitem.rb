class Subitem < ApplicationRecord
  belongs_to :subscription
  belongs_to :feature
end
