class CreateSocials < ActiveRecord::Migration[5.0]
  def change
    create_table :socials do |t|
      t.string :network
      t.string :username
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
