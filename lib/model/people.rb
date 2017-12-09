class People
  attr_reader :name, :last_name, :document

  def initialize(name , last_name, document)
    @name = name
    @last_name = last_name
    @document = document
  end
end
