class CreateJobsTable < ActiveRecord::Migration[6.0]
  def self.up
    create_table :jobs do |t|
      t.string :requirement_number
      t.string :company
      t.string :job_type
      t.string :job_title
      t.string :Duration
      t.string :Location
      t.string :mode_of_interview
      t.string :pay_rate
      t.string :visa_status
      t.text :job_description
      t.text :qualifictions
      t.text :daily_tasks
      t.text :responsibilities
      t.date :interview_date
      t.string :interview_location
      t.text :extra_data

      t.integer :lock_version
      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end

