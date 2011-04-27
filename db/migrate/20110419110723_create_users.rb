class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :firstname,:limit=>25,:null=>false
      t.string :lastname ,:limit=>25,:null=>false
      t.string :username,:limit=>8,:null=>false
      t.string :password,:limit=>8,:null=>false
      t.string :email
      t.string :phone,:limit=>15

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
