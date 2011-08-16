class CreateKioskPhotos < ActiveRecord::Migration
  def self.up
    create_table :kiosk_photos do |t|
      t.string :filename
      t.references :kiosk

      t.timestamps
    end
  end

  def self.down
    drop_table :kiosk_photos
  end
end
