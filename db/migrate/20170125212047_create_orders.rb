class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name_or_business
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
