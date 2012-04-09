class AddActiveToPeople < ActiveRecord::Migration
  def change
    add_column :people, :active, :boolean, :default => 1
  end
end
