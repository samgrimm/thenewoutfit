class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :bodytype
      t.string :need
      t.string :texture
      t.string :color
      t.string :statement

      t.timestamps
    end
  end
end
