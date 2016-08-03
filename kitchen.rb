require './storage'


class Kitchen

  def initialize
    @storage = Storage.new
  end


  def order(dish)
    p "KITCHEN: Order recieved for #{dish.name}"
    p "I'm gonna need some:"

    dish.ingredients.each do |ingredients|
      p "#{ingredients.amount} - #{ingredients.name}"
    end
    @storage.fetch(dish.ingredients)

  end
end
