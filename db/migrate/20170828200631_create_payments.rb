class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :parking, index: true
      t.references :info_payment, index: true
    	t.datetime :start
    	t.datetime :ending

      t.timestamps
    end
  end
end
