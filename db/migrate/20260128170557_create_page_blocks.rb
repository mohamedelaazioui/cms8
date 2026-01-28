class CreatePageBlocks < ActiveRecord::Migration[8.0]
  def change
    create_table :page_blocks do |t|
      t.references :page, null: false, foreign_key: true
      t.string :block_type
      t.integer :position
      t.jsonb :data

      t.timestamps
    end
  end
end
