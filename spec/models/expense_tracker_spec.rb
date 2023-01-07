# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExpenseTracker, type: :model do
  describe 'associations' do
    it { should belong_to(:trip) }
  end

  describe 'validations' do
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:amount) }
  end
end
