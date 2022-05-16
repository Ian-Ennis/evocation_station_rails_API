class CreateWritings < ActiveRecord::Migration[7.0]
  def change
    create_table :writings do |t|
      t.string :text

      t.timestamps
    end
  end
end
