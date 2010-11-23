class FloorUpdate
  include Mongoid::Document
  
  index :chamber
  index :legislative_day
  
  def self.singular_api?
    false
  end
  
  def self.default_order
    :timestamp
  end
  
  def self.basic_fields
    [:chamber, :legislative_day, :timestamp, :events]
  end
  
end