class RemoveStateFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :state, :string
  end
end
