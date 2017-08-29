class CreateParkings < ActiveRecord::Migration[5.0]
  def change
    create_table :parkings do |t|
    	t.references :user, index: true
    	t.references :property, index: true

      t.timestamps
    end
  end
end
