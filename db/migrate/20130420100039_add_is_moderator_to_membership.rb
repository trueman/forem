class AddIsModeratorToMembership < ActiveRecord::Migration
  def change
    add_column :forem_memberships, :is_moderator, :boolean, :default => false
  end
end
