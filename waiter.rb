require './check'

class Waiter

  def initialize(menu, kitchen)
    @menu = menu
    @kitchen = kitchen
    @check = Check.new
    @serving = true
  end

  def greet_guest
    p "Good day, Welcome to Ruben's Pizzeria"
  end


  def serve_guest
      p "How can I be of service?"
      p "1. Would you like to order a pizza?"
      p "2. Would that be it?"

      take_order(gets.chomp.to_i)
  end

    def take_order(order_number)
      case order_number
      when 1
        p "let me get the menu."
        list_menu
        order_food(gets.chomp.to_i)
      when 2
          p "The total amount is #{@check.sum} Euro"
          p "Thank you for your visit."
         @serving = false
      else
         p "I really don't understand."
      end
    end



    def list_menu
      @menu.contents.each_with_index do |recipe, index|
        p "#{index} -*-#{recipe.name}"
      end
    end

    def order_food(choice)
      if choice > 2
        p "ERROR ERROR ERROR ERROR ERROR"
      else
        dish = @menu.contents[choice]
          if @kitchen.order(dish)
            p "Dish is on its way"
            @check.add(dish)
          else
            p "Sorry this dish is not available"
          end
      end
    end

    def serving?
      return @serving
    end




end
