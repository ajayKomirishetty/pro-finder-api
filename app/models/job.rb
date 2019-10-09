class Job < ActiveRecord::Base
  
  has_many :technologies, :primary_key => "id", :foreign_key => "object_id"

  has_many :locations, :primary_key => "id", :foreign_key => "object_id"
  
end