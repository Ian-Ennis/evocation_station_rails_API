class CreateSounds < ActiveRecord::Migration[7.0]
  def change
    create_table :sounds do |t|

      t.timestamps
    end
  end
end
