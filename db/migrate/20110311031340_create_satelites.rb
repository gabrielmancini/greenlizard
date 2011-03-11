class CreateSatelites < ActiveRecord::Migration
  def self.up
    create_table :satelites do |t|
      t.string :name
      t.boolean :show

      t.timestamps
    end
  end

  def self.down
    drop_table :satelites
  end
end
