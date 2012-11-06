module TextValidations

  def self.included(base)
    base.validates_presence_of :body
    base.validates_format_of :body, :format => {:without => /(kitten)/}
  end


end