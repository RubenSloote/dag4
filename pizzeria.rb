require './waiter'
require './menu'
require './kitchen'


kitchen = Kitchen.new
menu = Menu.new
w = Waiter.new(menu, kitchen)

w.greet_guest

w.serve_guest
