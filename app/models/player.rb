class Player < ApplicationRecord
  scope :by_name, ->(name) { where("name LIKE ?", "%#{name}%") }
end
