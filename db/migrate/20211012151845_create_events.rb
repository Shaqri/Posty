class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    drop_table :events
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :action
      t.integer :eventable_id
      t.string :eventable_type

      t.timestamps
    end
  end
end
