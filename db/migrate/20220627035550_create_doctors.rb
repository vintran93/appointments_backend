class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :education
      t.string :specialty
      t.string :experience
      t.string :image
      t.string :address

      t.timestamps
    end
  end
end
