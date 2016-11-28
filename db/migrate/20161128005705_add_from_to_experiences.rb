class AddFromToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :from, :string
  end
end
