class CreatePoses < ActiveRecord::Migration
  def change
    create_table :poses do |t|
      t.string :image
      t.string :gender
      t.boolean :nude

      t.timestamps
    end
  end
end
