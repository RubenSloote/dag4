class Check

  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def sum
      sum = 0
      @items.each do |item|
        sum += item.price
      end
      sum
  end




end
