class Post < ActiveRecord::Base
  has_many :links
  has_many :paragraphs
end
