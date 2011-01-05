class CreateTestdb2s < ActiveRecord::Migration
  def self.up
    create_table :testdb2s do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :testdb2s
  end
end
