class CreateSounds < ActiveRecord::Migration[7.0]
  def change
    create_table :sounds do |t|
      t.string :audio_name
      t.string :audio_url

      t.timestamps
    end
  end
end
