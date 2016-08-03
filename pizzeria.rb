require './waiter'
require './menu'
require './kitchen'


kitchen = Kitchen.new
menu = Menu.new
w = Waiter.new(menu, kitchen)

w.greet_guest

while (w.serving?) do
  w.serve_guest
end
