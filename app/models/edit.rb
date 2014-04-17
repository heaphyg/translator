class Edit < ActiveRecord::Base
  belongs_to :translation
  belongs_to :editor, class_name: 'User'
end
