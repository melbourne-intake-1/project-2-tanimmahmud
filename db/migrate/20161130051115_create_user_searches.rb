class CreateUserSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :user_searches do |t|
      t.string :name
      t.string :title
      t.string :address

      t.timestamps
    end
  end
end
