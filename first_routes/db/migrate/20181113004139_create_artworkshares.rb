class CreateArtworkshares < ActiveRecord::Migration[5.2]
  def change
    create_table :artworkshares do |t|

      t.timestamps
    end
  end
end
