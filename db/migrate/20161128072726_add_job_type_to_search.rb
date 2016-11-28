class AddJobTypeToSearch < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :job_type, :string
  end
end
