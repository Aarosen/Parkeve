class CreateInfoPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :info_payments do |t|
    	t.string :payment_form
      t.integer :payment_amount

      t.timestamps
    end
  end
end
