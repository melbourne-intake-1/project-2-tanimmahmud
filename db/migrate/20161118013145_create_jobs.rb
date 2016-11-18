class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :user, foreign_key: true
      t.string :job_type
      t.text :description
      t.string :position
      t.string :location
      t.string :status
      t.string :day
      t.integer :amount

      t.timestamps
    end
  end
end
