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

   #Need to get this working with making a new instance of each exhibit
  def patrons_by_exhibit_interests
     hash = { exhibits => [@y]}
     @y = []
     patrons.each do |patron|
       if patron.interests.include? exhibits
         @y << patron
       end
     end
     hash
   end

  def ticket_lottery_contestants(exhibit)
     patrons_by_exhibit_interests.each
     #need to get patrons_by_exhibit_interests working to use this
   end

  def draw_lottery_winner
      #some code
  end

  def announce_lottery_winner
    #some code
  end  
end
