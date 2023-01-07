# frozen_string_literal: true

# ExpenseTracker
class ExpenseTracker < ApplicationRecord
  belongs_to :trip

  validates :date, :description, :amount, presence: true
end
