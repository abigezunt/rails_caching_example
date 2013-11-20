class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
