class Plant < ActiveRecord::Base

  has_many :waterings

  validates_presence_of :name, :birthday

end
