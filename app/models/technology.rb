class Technology < ActiveRecord::Base
  belongs_to :consultant, class_name => "Consultant"
  belongs_to :job, class_name => "Job"
end