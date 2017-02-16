class Garage

  def initialize
    @retrieve = []
  end

  def store(car)
    @retrieve << car
  end

  def retrieve
    @retrieve
  end

  def sort
    @retrieve.sort_by { |a| [a.model_year, a.class] }
  end

end



class Vehicle < Garage
  def initialize
    @lights = "off"
    @signal = "off"
    @speed = 0
  end

  def lights
    lights = "on"
  end

  def lights_off
    lights_off = "off"
  end

  def right_signal
    signal = "right"
  end

  def left_signal
    signal = "left"
  end

  def speed
    @speed
  end

end

class Car < Vehicle
  def initialize honk, year
    @wheels = "4 wheels"
    @honk_horn = honk
    @model_year = year
  end

  def wheels
    @wheels
  end

  def honk_horn
    @honk_horn
  end

  def model_year
    @model_year
  end

  def to_s
    "You car has #{wheels}, is from the year #{model_year} and is currently at speed #{speed.to_i}."
  end

end

class Toyota < Car

  def initialize honk, year
    super
  end

  def acceleration
    @speed = ( + 7)
    speed
  end

  def braking
    @speed = ( - 5)
    speed
  end

  def honk_horn
    @honk_horn = "whoop"
  end

  def model_year
    @model_year = "1986"
  end

end

class Tata < Car

  def initialize honk, year
    super
  end

  def acceleration
    @speed = ( + 2)
    speed
  end

  def brake
    @speed = ( - 1.25)
    speed
  end

  def honk_horn
    @honk_horn = "beep"
  end

  def model_year
    @model_year = "2000"
  end

end

class Tesla < Car

  def initialize honk, year
    super
  end

  def acceleration
    @speed = ( + 10)
    speed
  end

  def braking
    @speed = ( - 7)
    speed
  end

  def honk_horn
    @honk_horn = "Beep-bee-bee-boop-bee-doo-weep"
  end

  def model_year
    @model_year = "2017"
  end

end
