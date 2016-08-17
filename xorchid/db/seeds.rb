orchid = Plant.create!(name: orchid, birthday: Date.parse('January 11 2016'))
tulip = Plant.create!(name: tulip, birthday: Date.parse('Feb 8 2016'))

Watering.create!(plant: orchid, water_date: Date.parse('yesterday'))
Watering.create!(plant: orchid, water_date: Date.parse('last Tuesday'))
Watering.create!(plant: tulip, water_date: Date.parse('tomorrow'))
Watering.create!(plant: tulip, water_date: Date.parse('next Friday'))

