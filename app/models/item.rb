class Item < ApplicationRecord
  validates :name, presence: true
  validates :short_description, presence: true
  validates :count, presence: true
end
