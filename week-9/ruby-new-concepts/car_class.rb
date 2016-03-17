=begin
 Create a Car Class from User Stories

# I worked on this challenge by myself.

 2. Pseudocode
Create a new car and set type and color - done
Add ability to set a distance to drive - done
Add ability to display speed of travel -done
  Add ability to lower or raise the speed of travel - done
Add ability to turn left or right - done
Add ability to display the distance traveled so far - done
Add ability to calculate reimbursement for distance traveled so far - done
Add ability to stop the car if there's a stop sign or yellow/red light - done
Add ability to see what the last action was to keep track of the delivery. - incomplete

Characterists(attributes): make, color, speed, distance traveled
Actions(methods): Set distance, Display speed, Change speed, Make turn, Display distance, Calculate reimbursement,
Stop car, Display last action


# 3. Initial Solution
=end

class Car
  attr_reader :make, :color

  def initialize(make, color, direction, distance)
    @make = make
    @color = color
    @distance_traveled = 0 #Set distance traveled
    @speed = 0 #Set speed
    @direction = direction
    @distance = distance #Set distance TO travel
  end

  def distance_to_deliver
    if @distance - @distance_traveled == 1
      puts (@distance - @distance_traveled).to_s + " mile to go until I deliver this pizza."
    else
      puts (@distance - @distance_traveled).to_s + " miles to go until I deliver this pizza."
    end
  end

  def drive(miles, mph=@speed)
    @distance_traveled += miles
    @speed = mph
  end

  def speed_up(mph)
    @speed += mph
  end

  def slow_down(mph)
    @speed -= mph
  end

  def stop
    @speed = 0
  end

  def turn(direction)
    if direction == "left" || direction == "right"
      @direction = direction
    else
      raise ArgumentError.new("You can only go left or right in this old thing!")
    end
  end

  def display_distance
    if @distance_traveled == 1
      puts "I've traveled " + @distance_traveled.to_s + " mile"
    else
      puts "I've traveled " + @distance_traveled.to_s + " miles"
    end
  end

  def get_reimbursed
    puts "I'm getting $" + (@distance_traveled*0.54).to_s + " back for this distance!"
  end

  def deliver
    if @distance == @distance_traveled
      puts "Pizza delivered!"
    elsif @distance_to_deliver == 1
      puts @distance_to_deliver.to_s + " to go before I deliver this pizza."
    end
  end

end #From Class



# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE
first_car = Car.new("Jeep", "white", "straight", 5)
first_car.drive(3, 30)
first_car.turn("right")
first_car.stop
first_car.display_distance
first_car.get_reimbursed
first_car.turn("right")
first_car.distance_to_deliver
first_car.deliver
