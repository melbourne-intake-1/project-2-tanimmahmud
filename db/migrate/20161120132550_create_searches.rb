class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :position
      t.string :location

      t.timestamps
    end
  end
end
