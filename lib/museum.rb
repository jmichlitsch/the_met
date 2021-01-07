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

   def admit(patron)
     @patrons << patron
   end

   def patrons_by_exhibit_interests
     hash = { @x => [@y]}
     @x = exhibits.map do |exhibit|
          exhibit.name
        end
     @y = []
     # patrons.each do |patron|
     #   if patron.interests.include? exhibits
     #     @y << patron
     #   end
     # end
     hash
   end
end
