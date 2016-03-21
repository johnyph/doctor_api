class CreateAccessTokens < ActiveRecord::Migration
  def change
    create_table :access_tokens do 
      |t|
      t.references :user
      t.string :access_token, unique: true
      t.datetime :expired_at
      t.datetime :created_at
      t.timestamps null: true
    end
  end
end
