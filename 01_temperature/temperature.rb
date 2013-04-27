CELSIUS_FREEZING_POINT = 0
FAHRENHEIT_FREEZING_POINT = 32

def ftoc(temperature)
  (temperature.to_f - 32) * (5.0 / 9.0)
end

def ctof(temperature)
  temperature * (9.0 / 5.0) + 32
end

p ctof(100)
