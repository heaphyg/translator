class EnglishWord < ActiveRecord::Base
  belongs_to :creator, class_name: 'User'
  has_many :translations
  has_many :german_words, through: :translations
end
