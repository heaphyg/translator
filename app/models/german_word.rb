class GermanWord < ActiveRecord::Base
  belongs_to :creator, class_name: 'User'
  has_many :translations
  has_many :english_words, through: :translations
end
