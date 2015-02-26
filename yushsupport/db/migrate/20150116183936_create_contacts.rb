class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :department
      t.string :integer
      t.text :message

      t.timestamps null: false
    end
  end
end
