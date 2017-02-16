require 'rspec'
require_relative 'car'

describe Vehicle do
  it "has to create a vehicle object" do
    expect{Vehicle.new}.to_not raise_error
  end
  it "must turn lights on" do
    vehicle = Vehicle.new
    expect(vehicle.lights).to eq("on")
  end
  it "must turn lights off" do
    vehicle = Vehicle.new
    expect(vehicle.lights_off).to eq("off")
  end
  it "must turn right" do
    vehicle = Vehicle.new
    expect(vehicle.right_signal).to eq("right")
  end
  it "must turn left" do
    vehicle = Vehicle.new
    expect(vehicle.left_signal).to eq("left")
  end
  it "must determine if a cars speed is 0" do
    vehicle = Vehicle.new
    expect(vehicle.speed).to eq(0)
  end

end

describe Car do
  it "must create a car" do
    expect{Car.new("honk", "year")}.to_not raise_error
  end

  it "car has to have 4 wheels" do
    car = Car.new("honk", "year")
    expect(car.wheels).to eq("4 wheels")
  end
  #
  # it "has to have a model_year" do
  #   car = Car.new("honk", "2017")
  #   expect(car.model_year).to eq("2017")
  # end

  it "must include car specs: wheels, model_year and speed" do
    car = Car.new("honk", "year")
    expect(car.to_s).to eq("You car has 4 wheels, is from the year year and is currently at speed 0.")
  end
  # it "car must honk" do
  #   car = Car.new("honk", "year")
  #   expect(car.honk_horn).to_be("honk", "year")
  # end
end

describe Toyota do
  it "must create a Toyota car" do
    expect{Toyota.new("honk", "year")}.to_not raise_error
  end
  it "must honk whoop" do
    toyota = Toyota.new("honk", "year")
    expect(toyota.honk_horn).to eq("whoop")
  end
  it "must accelerate Toyota car by 7" do
    toyota = Toyota.new("honk", "year")
    expect(toyota.acceleration).to eq(7)
  end
  it "must brake Toyota by 5 km/h" do
    toyota = Toyota.new("honk", "year")
    expect(toyota.braking).to eq(-5)
  end
  it "must have the model year 1986" do
    toyota = Toyota.new("honk", "year")
    expect(toyota.model_year).to eq("1986")
  end
end

describe Tata do
  it "must create a Tata car" do
    expect{Tata.new("honk", "year")}.to_not raise_error
  end
  it "must honk beep" do
    tata = Tata.new("honk", "year")
    expect(tata.honk_horn).to eq("beep")
  end
  it "must accelerate Tata car by 2" do
    tata = Tata.new("honk", "year")
    expect(tata.acceleration).to eq(2)
  end
  it "must slow the car down by 1.25" do
    tata = Tata.new("honk", "year")
    expect(tata.brake).to eq(-1.25)
  end
  it "must have the model year 2000" do
    tata = Tata.new("honk", "year")
    expect(tata.model_year).to eq("2000")
  end

end

describe Tesla do
  it "must create a Tesla car" do
  expect{Tesla.new("honk", "year")}.to_not raise_error
  end
  it "must honk Beep-bee-bee-boop-bee-doo-weep" do
    telsa = Tesla.new("honk", "year")
    expect(telsa.honk_horn).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end
  it "must accelerate Tesla car by 10" do
    tesla = Tesla.new("honk", "year")
    expect(tesla.acceleration).to eq(10)
  end
  it "must brake car by 7" do
    tesla = Tesla.new("honk", "year")
    expect(tesla.braking).to eq(-7)
  end
  it "must have the model year 2017" do
    tesla = Tesla.new("honk", "year")
    expect(tesla.model_year).to eq("2017")
  end
end

describe Garage do
  it "can add cars to itself" do
    # make a garage
    my_garage = Garage.new
    # make a car
    car = Car.new("honk", "year")
    # give our car to the function that shovels cars into the garage
    my_garage.store(car)
    # our car should be in the array that the retrieve method returns
    expect(my_garage.retrieve).to include(car)
  end

  it "can sort the cars in our garage" do
    my_garage = Garage.new
    tesla = Tesla.new("honk", "year")
    toyota = Toyota.new("honk", "year")
    tata = Tata.new("honk", "year")
    my_garage.store(tesla)
    my_garage.store(tata)
    my_garage.store(toyota)
    expect(my_garage.sort).to include(tesla, tata, toyota)
  end
end
