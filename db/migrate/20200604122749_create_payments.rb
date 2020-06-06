class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.float :total_price
      t.string :status

      t.timestamps
    end
  end
end
