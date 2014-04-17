class Superadmin < ActiveRecord::Migration
  def change
    add_column :fixers, :superadmin, :boolean
  end
end
