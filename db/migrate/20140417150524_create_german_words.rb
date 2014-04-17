class CreateGermanWords < ActiveRecord::Migration
  def change
    create_table :german_words do |t|
      t.string :word
      t.belongs_to :creator
      t.timestamps
    end
  end
end
