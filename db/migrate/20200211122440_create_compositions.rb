class CreateCompositions < ActiveRecord::Migration[6.0]
  def change
    create_table :compositions do |t|
      t.string :name
      t.string :layout
      t.integer :bpm
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
