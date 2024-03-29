class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :phone_number
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
