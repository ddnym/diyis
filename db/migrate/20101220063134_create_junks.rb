class CreateJunks < ActiveRecord::Migration
  def self.up
    create_table :junks do |t|
      t.string :title
      t.text :body
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :junks
  end
end
