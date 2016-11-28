class RomoveDurationFromExperiences < ActiveRecord::Migration[5.0]
  def change
    remove_column :experiences, :duration, :string
  end
end
