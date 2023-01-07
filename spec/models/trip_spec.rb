# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe 'associations' do
    it { should have_many(:routes).validate(true).dependent(:destroy) }
    it { should have_many(:expense_trackers).validate(true).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
  end
end
