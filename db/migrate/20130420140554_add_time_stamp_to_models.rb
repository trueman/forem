class AddTimeStampToModels < ActiveRecord::Migration
  def change
    %w(forem_forums forem_groups forem_moderator_groups forem_memberships).each do |model|
      change_table(model.to_sym) { |t| t.timestamps }
    end
  end
end
