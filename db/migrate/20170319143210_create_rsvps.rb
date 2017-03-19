class CreateRsvps < ActiveRecord::Migration[5.0]
  def change
    create_table :rsvps do |t|
      t.string :full_name
      t.boolean :is_coming
      t.boolean :has_plus_one
      t.string :plus_one_full_name

      t.timestamps
    end
  end
end
