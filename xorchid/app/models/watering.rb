class Watering < ActiveRecord::Base

  belongs_to :plant

  validates_presence_of :water_date

end
