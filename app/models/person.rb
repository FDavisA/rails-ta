class Person < ApplicationRecord
  has_one :details, dependent: :destroy
  validates :name, presence: true
end