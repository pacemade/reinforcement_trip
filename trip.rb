require 'pry'

class Trip

  attr_accessor :places, :name

  def initialize(name)
    @name = name
    @places = []
  end

  def add_destination(name)
    destination = Location.new(name)
    @places << destination
  end

  def begin_trip
    p "Began trip"
    @places.each_with_index do |place, i|
      next_item = @places[i+1].name unless i == @places.size - 1
      if i == @places.size - 1
        p "Finished trip!"
      else
        p "Travelled from #{place.name} to #{next_item}"
      end
    end
  end
end
