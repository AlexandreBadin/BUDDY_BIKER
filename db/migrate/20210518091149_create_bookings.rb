class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :status, default: 0
      t.integer :booking_price
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :biker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
