class Customer < ApplicationRecord
  validates :name, presence: true
  validates :address_1, presence: true
  validates :postal, presence: true
  validates :state, presence: true
  validates :postal, presence: true
  validates :country, presence: true
end
