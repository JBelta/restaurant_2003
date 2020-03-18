class Restaurant
  attr_reader :time, :name, :dishes

  def initialize(time, name)
    @time = time
    @name = name
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def dishes
    p @dishes
  end

  def opening_time
    p @time
  end

  def closing_time(hours)
    current_time = @time.to_i
    time_change = current_time + hours
    time_change.to_s + (":00")
  end
  def open_for_lunch?
    if @time.to_i < 15
      print true
    else
      @time.to_i > 15
      print false
    end

end

restaurant = Restaurant.new("10:00", "Fuel Cafe")

restaurant1 = Restaurant.new("10:00", "Fuel Cafe")
restaurant2 = Restaurant.new('16:00', 'Il Poggio')

restaurant1.closing_time(8)
restaurant2.closing_time(7)

restaurant = Restaurant.new('16:00', 'Il Poggio')

restaurant.add_dish("Burrata")
restaurant.add_dish("Pizzetta")
restaurant.add_dish("Ravioli")
