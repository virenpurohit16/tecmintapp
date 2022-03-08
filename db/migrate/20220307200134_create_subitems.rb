class CreateSubitems < ActiveRecord::Migration[6.1]
  def change
    create_table :subitems do |t|
      t.string :name
      t.integer :subs_usage
      t.integer :tracked_quantity
      t.boolean :notification
      t.boolean :approval
      t.references :subscription, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
