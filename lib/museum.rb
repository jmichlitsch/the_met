require './lib/patron'
require './lib/exhibit'

class Museum
  attr_accessor :exhibits

  attr_reader :name
  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end
end
