class CreateTestdbs < ActiveRecord::Migration
  def self.up
    create_table :testdbs do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :testdbs
  end
end
