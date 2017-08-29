class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
    	t.references :user, index: true
    	t.integer :owner_id, index: true
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
