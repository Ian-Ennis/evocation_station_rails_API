class CreatePrebuiltevocations < ActiveRecord::Migration[7.0]
  def change
    create_table :prebuiltevocations do |t|
      t.string :writing
      t.string :image
      t.string :sound
      t.references :user, type: :integer, foreign_key: true

      t.timestamps
    end
  end
end
