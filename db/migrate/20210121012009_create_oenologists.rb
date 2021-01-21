class CreateOenologists < ActiveRecord::Migration[6.0]
  def change
    create_table :oenologists do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      t.string :company
      t.string :role

      t.timestamps
    end
  end
end