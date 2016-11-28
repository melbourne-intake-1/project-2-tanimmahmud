class AddPhoneToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :phone, :string
    add_column :profiles, :website, :string
  end
end
