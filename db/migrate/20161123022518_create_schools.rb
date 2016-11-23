class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :qualification
      t.string :start
      t.string :end
      t.string :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
