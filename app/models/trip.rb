# frozen_string_literal: true

# A trip has many routes and expense trackers, and accepts nested attributes for routes and expense trackers
class Trip < ApplicationRecord
  has_many :routes, validate: true, dependent: :destroy
  has_many :expense_trackers, validate: true, dependent: :destroy
  accepts_nested_attributes_for :routes, :expense_trackers, allow_destroy: true

  # Validating that the title, start_date, and end_date are present.
  validates :title, :start_date, :end_date, presence: true
end
