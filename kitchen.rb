class Kitchen
  def order(dish)
    p "KITCHEN: Order recieved for #{dish.name}"
    p "I'm gonna need some:"

    dish.ingredients.each do |ingredient|
      p "#{ingredient.amount} - #{ingredient.name}"
    end
  end
end
