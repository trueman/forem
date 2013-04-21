class AddIconToForum < ActiveRecord::Migration
  def change
    add_column :forem_forums, :icon, :string
  end
end
