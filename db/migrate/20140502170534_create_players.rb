class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string  :status
      t.string  :group
      t.string  :first_name
      t.string  :last_name
      t.string  :aka
      t.string  :email
      t.string  :phone1
      t.string  :phone_type1
      t.string  :phone2
      t.string  :phone_type2
      t.string  :gender
      t.string  :grad_year
      t.string  :rank
      t.string  :scholarship
      t.string  :usua_num
      t.string  :med_form
      t.string  :travel_form
      t.integer :jersey_num
      t.string  :jersey_size
      t.string  :shorts_size
      t.string  :drivers_license
      t.string  :drive_status
      t.string  :medical_info
      t.string  :skills
      t.string  :notes

      t.timestamps
    end
  end
end
