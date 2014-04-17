class CreateEnglishWords < ActiveRecord::Migration
  def change
    create_table :english_words do |t|
      t.string :word
      t.belongs_to :creator
      t.timestamps
    end
  end
end
