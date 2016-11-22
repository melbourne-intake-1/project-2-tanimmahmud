class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :title
      t.string :image
      t.string :description
      t.string :resume_file
      t.text :address
      t.string :state

      t.timestamps
    end
  end
end
