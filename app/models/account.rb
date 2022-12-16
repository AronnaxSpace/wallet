class Account < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates :name, presence: true
  validates :balance_in_cents, numericality: true
end
