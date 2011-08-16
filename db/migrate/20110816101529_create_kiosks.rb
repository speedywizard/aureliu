class CreateKiosks < ActiveRecord::Migration
  def self.up
    create_table :kiosks do |t|
      t.date :install_date
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :kiosks
  end
end
