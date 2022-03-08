class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.belongs_to :merchant, index: true, foreign_key: true
      t.string :name
      t.boolean :approval
      t.boolean :notifications
      t.string :status
      t.date :start_date
      t.date :end_date
      t.integer :usage_subscribed
      t.integer :usage_actual


      t.timestamps
    end
  end
end
