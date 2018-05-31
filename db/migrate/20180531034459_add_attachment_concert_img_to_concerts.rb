class AddAttachmentConcertImgToConcerts < ActiveRecord::Migration
  def self.up
    change_table :concerts do |t|
      t.attachment :concert_img
    end
  end

  def self.down
    remove_attachment :concerts, :concert_img
  end
end
