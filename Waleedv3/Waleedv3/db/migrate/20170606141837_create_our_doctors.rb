class CreateOurDoctors < ActiveRecord::Migration
  def change
    create_table :our_doctors do |t|
      t.string :image_url
      t.string :firstname
      t.string :lastname
      t.string :speciality

      t.timestamps null: false
    end
  end
end
