class CreateEdits < ActiveRecord::Migration
  def change
    crete_table :edits do |t|
      t.belongs_to :editor
      t.belongs_to :translation
    end
  end
end
