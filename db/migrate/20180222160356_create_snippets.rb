class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :url
      t.text :content
      t.boolean :is_private

      t.timestamps null: false
    end
  end
end
