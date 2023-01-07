# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Route, type: :model do
  describe 'associations' do
    it { should belong_to(:trip) }
  end

  describe 'validations' do
    it { should validate_presence_of(:place_name) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
  end
end
