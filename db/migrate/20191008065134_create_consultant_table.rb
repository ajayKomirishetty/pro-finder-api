class CreateConsultantTable < ActiveRecord::Migration[6.0]
  def self.up
    create_table :consultants do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :mobile
      t.string :email_id
      t.string :alternate_email_id
      t.string :city
      t.string :state
      t.string :country
      t.boolean :will_relocate
      t.string :skype_id
      t.string :work_authorisation
      t.date :visa_validity_end_date
      t.integer :expected_ctc
      t.string :current_ctc
      t.string :h1b_holder_name
      t.integer :h1b_holder_contact_number
      t.integer :years_of_experience
      t.integer :no_of_years_holding_h1b
      t.boolean :green_card_applied
      t.string :green_card_status
      t.boolean :any_active_offers
      t.text :reason_for_change
      t.integer :notice_period
      t.text :constraints_to_join_new_offer

      t.integer :lock_version
      t.timestamps
    end
  end

  def self.down
    drop_table :consultants
  end
end




