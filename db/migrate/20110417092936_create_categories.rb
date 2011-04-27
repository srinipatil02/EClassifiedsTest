class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :category_name,:limit=>25,:null=>false
      t.string :description,:limit=>50

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
