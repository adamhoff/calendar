class CreateMonths < ActiveRecord::Migration[5.0]
  def change
    create_table :months do |t|
      t.string :name
      t.integer :month_length

      t.timestamps
    end
  end
end
