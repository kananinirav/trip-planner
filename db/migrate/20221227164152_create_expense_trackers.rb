# frozen_string_literal: true

# CreateExpenseTrackers
class CreateExpenseTrackers < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_trackers do |t|
      t.date :date
      t.text :description
      t.float :amount
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
