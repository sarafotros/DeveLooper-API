class CreateSoundSamples < ActiveRecord::Migration[6.0]
  def change
    create_table :sound_samples do |t|
      t.string :name
      t.string :bin_data
      t.string :mime_type

      t.timestamps
    end
  end
end
