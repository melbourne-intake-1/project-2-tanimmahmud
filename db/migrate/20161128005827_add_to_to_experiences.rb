class AddToToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :to, :string
  end
end
