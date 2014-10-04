class CreateInitialSchema < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.timestamps
    end

    create_table :translations do |t|
      t.integer :phrase_id, null: false
      t.string :text, null: false
      t.string :language, null: false
      t.timestamps
    end

    add_index :translations, :phrase_id
  end
end
