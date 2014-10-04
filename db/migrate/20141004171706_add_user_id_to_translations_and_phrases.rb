class AddUserIdToTranslationsAndPhrases < ActiveRecord::Migration
  def change
    add_column :translations, :user_id, :integer, null: false
    add_column :phrases, :user_id, :integer, null: false
  end
end
