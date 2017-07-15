class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :age
      t.string :address
      t.string :image_url

      t.timestamps null: false
    end
  end
end
