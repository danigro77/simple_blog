require '/Users/apprentice/Desktop/simple_blog/lib/text_validations.rb'
class Article < ActiveRecord::Base
  include TextValidations

  has_many :comments, dependent: :destroy

  validates :title, :presence => true
  validates :title, :format => {:without => /(kitten)/}

  attr_accessible :body, :title
end
