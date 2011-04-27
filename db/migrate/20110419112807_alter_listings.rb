class AlterListings < ActiveRecord::Migration
  def self.up
      change_table :listings do |t|
      t.references :user
      end
    add_index("listings","user_id")

  end

  def self.down
    remove_column("listings","user_id")
    remove_index("listings","user_id")

  end
end
