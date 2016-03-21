class CreateUsers < ActiveRecord::Migration
  def change
		create_table :users do |t|
			t.string :first_name
      t.string :last_name
      t.string :vat
			t.string :email
			t.string :password_digest
      t.string :access_token
		end
  end
end
