class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :UserAccount
      t.string :Name
      t.string :LastName
      t.string :SecondLastName
      t.string :Cellphone
      t.string :Email
      t.integer :IdProfile

      t.timestamps
    end
  end
end
