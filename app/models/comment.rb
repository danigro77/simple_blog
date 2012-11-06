require '/Users/apprentice/Desktop/simple_blog/lib/text_validations.rb'

class Comment < ActiveRecord::Base
  include TextValidations

  belongs_to :article

  attr_accessible :body
  validates :body, :length => { :maximum => 250 }
end
