class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title, null: false
      t.text :description
      t.string :category
      t.string :status
      t.string :level
      t.references :user
      t.integer :assistant_id
      t.timestamps
    end

    add_index :tickets, :user_id
    add_index :tickets, :assistant_id
  end
end
