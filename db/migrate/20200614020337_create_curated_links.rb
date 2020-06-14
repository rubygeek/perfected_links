class CreateCuratedLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :curated_links do |t|
      t.string :url
      t.integer :cat_id
      t.date :last_verified
      t.boolean :approved
      t.integer :importance
      t.integer :relevance
      t.string :metadata

      t.timestamps
    end
    add_index :curated_links, :cat_id, unique: true
  end
end
