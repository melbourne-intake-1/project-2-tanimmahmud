class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.references :user, foreign_key: true
      t.string :employer
      t.string :job_title
      t.string :duration
      t.string :responsibilities

      t.timestamps
    end
  end
end
