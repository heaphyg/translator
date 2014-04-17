class Translation < ActiveRecord::Base
  belongs_to :english_word
  belongs_to :german_word
  has_many :edits
end
