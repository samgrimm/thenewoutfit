class CreateRecommenders < ActiveRecord::Migration
  def change
    create_table :recommenders do |t|
      t.string :link
      t.string :bodytype
      t.string :need
      t.string :texture
      t.string :color
      t.string :statement

      t.timestamps
    end
  end
end
