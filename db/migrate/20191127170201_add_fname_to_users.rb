class AddFnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fName, :string
  end
end
