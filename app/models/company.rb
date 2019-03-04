class Company < ApplicationRecord
  validates :name, presence: true
  has_many :complains, dependent: :destroy
end
