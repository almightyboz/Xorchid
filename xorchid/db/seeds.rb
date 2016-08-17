orchid = Plant.create!(name: "orchid", birthday: Date.parse('January 11 2016'))
tulip = Plant.create!(name: "tulip", birthday: Date.parse('Feb 8 2016'))

Watering.create!(plant: orchid, water_date: Date.parse('August 15 2017'))
Watering.create!(plant: orchid, water_date: Date.parse('August 20, 2016 Tuesday'))
Watering.create!(plant: tulip, water_date: Date.parse('August 1, 2016'))
Watering.create!(plant: tulip, water_date: Date.parse('September 1, 2016'))

