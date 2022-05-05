class CreateEvocations < ActiveRecord::Migration[7.0]
  def change
    create_table :evocations do |t|
      t.string :text
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
