class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.belongs_to :english_word
      t.belongs_to :german_word
    end
  end
end
