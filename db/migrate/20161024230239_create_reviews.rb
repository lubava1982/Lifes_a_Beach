class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :comment
      t.float :rating
      t.references :user, index: true
      t.references :beach, index: true

      t.timestamps
    end
  end
end
