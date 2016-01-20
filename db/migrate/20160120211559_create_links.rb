class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.belongs_to :post
      t.string :address

      t.timestamps null: false
    end
  end
end
