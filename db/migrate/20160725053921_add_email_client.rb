class AddEmailClient < ActiveRecord::Migration
  def change
  	add_column :clients ,:email, :string
  end
end
