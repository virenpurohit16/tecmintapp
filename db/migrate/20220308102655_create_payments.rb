class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.references :merchant, null: false, foreign_key: true
      t.boolean :recieved

      t.timestamps
    end
  end
end
