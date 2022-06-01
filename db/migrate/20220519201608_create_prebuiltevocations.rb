class CreatePrebuiltevocations < ActiveRecord::Migration[7.0]
  def change
    create_table :prebuiltevocations do |t|
      t.string :text
      t.string :image_url
      t.string :sound_url

      t.timestamps
    end
  end
end
