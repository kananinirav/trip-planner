# frozen_string_literal: true

# Route
class Route < ApplicationRecord
  belongs_to :trip

  validates :place_name, :start_date, :end_date, presence: true
end
