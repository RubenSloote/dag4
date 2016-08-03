require './dish'


class Menu
  def contents
    @menu
  end
  def initialize
    @menu = []
    @menu << Dish.new("Margherita")
    @menu << Dish.new("Napoletana")
    @menu << Dish.new("Peperoni")
  end
end
