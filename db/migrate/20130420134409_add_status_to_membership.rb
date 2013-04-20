class AddStatusToMembership < ActiveRecord::Migration
  def change
    add_column :forem_memberships, :status, :string, :default => "pending"
  end
end
