class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :star_id,      null: false
      t.text :comment,         null: false
      t.references :cook,      null: false, foreign_key: true
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
