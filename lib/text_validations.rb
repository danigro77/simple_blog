module TextValidations

  def self.included(base)
    base.validates_presence_of :title, :body
    base.validates_format_of :title, :body, :without => /(kitten)/
  end


end