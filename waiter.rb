class Waiter
  def greet_guest
    p "Good day, Welcome to Ruben's Pizzeria"
  end


  def serve_guest
      p "How can I be of service?"
      p "1. Would you like to order a pizza?"
      p "2. Would that be it?"

      p take_order(gets.chomp.to_i)
  end

    def take_order(order_number)
      case order_number
      when 1
        "let me get the menu."
      when 2
        "Thank you for your visit."
      else
          "I really don't understand."
      end
    end









end
