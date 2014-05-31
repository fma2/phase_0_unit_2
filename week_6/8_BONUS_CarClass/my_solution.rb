# U2.W6: Create a Car Class from User Stories


# I worked on this challenge with Justin Lee.


# 2. Pseudocode

# Attributes: model, color, distance, speed, total distance traveled, output

# Methods: turn left and right, acceleration and deceleration, stopping and starting

# class Car

  # INITIALIZE car(model, color)
    # @distance = 0
  # END

  # DEFINE drive(miles, speed)
    # @distance = @distance + miles
    # @speed = speed
    
  # DEFINE speed
    # RETURN @speed
    # END
    
  # DEFINE turn_at_stop_sign(direction)
    # if left 
      # turn left
    # else 
      # turn right
    # END
  
  # DEFINE change_speed(amount_change)
    # @speed = @speed + amount_change
  
  # DEFINE total_distance
    # RETURN @distance
  
  # DEFINE stop
    # speed = 0
  
  # DEFINE output(action = @array.pop)
    # RETURN array.pop
    # @speed
    # @distance


# 3. Initial Solution


=begin
class Car
  
  def initialize(model, color)
    @model = model
    @color = color
  end
  
end

class Directions
  
  def initialize(car)
    @car = car
    @distance = 0
  end
  
  def drive(miles, speed)
    @distance = @distance + miles
    @speed = speed
  end
  
  def speed
    @speed
  end
  
  def turn_at_stop(direction)
    @directions
  end
  
  def change_speed(amount_change)
    @speed = @speed + amount_change
  end
  
  def total_distance
    @distance
  end
  
  def stop
    @speed = 0
  end
  
  def output(action = array.pop)
    action
    @distance
    @speed
  end
  
end
=end

# 4. Refactored Solution

class Car
  
  def initialize(model, color, *pizzas)
    @model = model
    @color = color
    @insulated_compartment = []
    @pizzas = *pizzas
    @pizzas.each { |pizza| @insulated_compartment << pizza }
  end
  
  def add_pizza(*pizzas)
    @pizzas = *pizzas
    @pizzas.each { |pizza| @insulated_compartment << pizza }
  end
  
  def get_pizza(pizza = @insulated_compartment.first)
    @insulated_compartment.delete(pizza)
    "Here is your #{pizza.type} #{pizza.specialization} pizza."
  end
  
  def see_all_pizza
    puts "The insulated compartment contains:"
    @insulated_compartment.each {|pizza| puts "- " + " #{pizza.type} #{pizza.specialization} pizza" }
  end
  
  def pizza_count
    @insulated_compartment.count
    "You have #{@insulated_compartment.count} pizza(s) left in your insulated compartment."
  end
  
end

class Directions
  
  def initialize(car)
    @car = car
    @distance = 0
  end
  
  def drive(miles, speed)
    @distance = @distance + miles
    @speed = speed
    "You drove your car #{miles} miles at #{@speed} MPH."
  end
  
  def speed
    "You are driving #{@speed} MPH."
  end
  
  def turn_at_stop(direction)
    "You stopped at a stop sign and turned #{direction}."
  end
  
  def change_speed(amount_change)
    @speed = @speed + amount_change
    "You changed your speed to #{@speed} MPH."
  end
  
  def total_distance
    "You have traveled #{@distance} miles."
  end
  
  def stop
    @speed = 0
    "You have arrived at your destination."
  end
  
end

class Pizza
  
  # Menu
  # Type of pizza = Deep dish, New York-style 
  # Specialization = Margherita, Gluten-free, Vegan, Vegeterian
  # Toppings = Pepperoni, Mushrooms, Onions, Sausage, Bacon, Extra cheese, Black olives, Green peppers, Pineapple, Spinach
  
  attr_reader :type, :specialization
  
  def initialize(type)
    @type = type
    @toppings_list = []
  end

  def add_toppings(*toppings)
    @toppings = *toppings
    @toppings.each { |topping| @toppings_list << topping }
  end
  
  def add_specialization(specialization)
    @specialization = specialization
  end
  
end

# 1. DRIVER TESTS GO BELOW THIS LINE
cheese_pizza = Pizza.new("New York-style")
cheese_pizza.add_toppings("Extra cheese")
cheese_pizza.add_specialization("Margherita")

player_one_car = Car.new("Beetle", "Yellow", cheese_pizza)
player_one_car_directions = Directions.new(player_one_car)
p player_one_car_directions.drive(0.25,25)
p player_one_car_directions.turn_at_stop("right")
p player_one_car_directions.drive(1.5,35)
p player_one_car_directions.speed
p player_one_car_directions.change_speed(-20)
p player_one_car_directions.drive(0.25,15)
p player_one_car_directions.turn_at_stop("left")
p player_one_car_directions.drive(1.4,35)
p player_one_car_directions.stop
p player_one_car_directions.total_distance

vegetarian_pizza = Pizza.new("Deep Dish")
vegetarian_pizza.add_toppings("Mushrooms", "Onions", "Black olives", "Green peppers", "Spinach")
vegetarian_pizza.add_specialization("Vegetarian")
player_one_car.add_pizza(vegetarian_pizza)

p player_one_car.pizza_count # => 2
player_one_car.see_all_pizza # => cheese_pizza, vegetarian_pizza
p player_one_car.get_pizza # => remove cheese_pizza

p player_one_car.pizza_count # => 1
player_one_car.see_all_pizza # => vegetarian_pizza





# 5. Reflection 