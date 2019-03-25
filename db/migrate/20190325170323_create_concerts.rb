class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :location
      t.string :genre

      t.timestamps
    end
  end
end
