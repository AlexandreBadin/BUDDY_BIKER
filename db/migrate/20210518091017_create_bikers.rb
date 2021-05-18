class CreateBikers < ActiveRecord::Migration[6.0]
  def change
    create_table :bikers do |t|
      t.string :pseudo
      t.string :address
      t.text :description
      t.date :date
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
