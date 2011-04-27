class CreateListings < ActiveRecord::Migration
  def self.up
    create_table :listings do |t|
      t.references :category
      t.string :title,:limit=>50,:null=>false
      t.text :body
      t.date :submissiondate
      t.string :email
      t.string :contactphone,:limit=>15
      t.string :status,:limit=>15

      t.timestamps
    end
    add_index("listings","category_id");

  end

  def self.down

    drop_table :listings
  end
end
