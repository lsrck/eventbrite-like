class AddEmailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :emails, :string
  end
end
