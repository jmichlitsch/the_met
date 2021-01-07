require './lib/patron'
require './lib/exhibit'

class Museum
  attr_accessor :exhibits,
                :patrons

  attr_reader :name
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []
      exhibits.each do |exhibit|
        if patron.interests.include? exhibit.name
          recommended_exhibits << exhibit
        end
      end
      recommended_exhibits
  end
   # require 'pry'; binding.pry
   def
end
