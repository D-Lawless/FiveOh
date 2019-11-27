class AddSnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sName, :string
  end
end
