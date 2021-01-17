class CreatePasswordBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :password_blocks do |t|
      t.string :password, null: false

      t.timestamps
    end

    add_index :password_blocks, :password, unique: true
  end
end
