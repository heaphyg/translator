class User < ActiveRecord::Base
  has_many :english_words
  has_many :german_words
  has_many :edits
  has_many :translations, through: :edits

end
