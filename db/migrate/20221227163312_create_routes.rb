# frozen_string_literal: true

# CreateRoutes
class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :place_name
      t.date :start_date
      t.date :end_date
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
