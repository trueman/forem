module Forem
  class MembersController < Forem::ApplicationController
    
    def new
      forum = Forum.where(slug: params[:forum_id]).first
      group = forum.moderator_groups.first
      membership = Membership.create(group_id: group.id, member_id: current_user.id)
      flash[:alert] = membership.errors.full_messages if membership.errors.any?
      redirect_to :back
    end

  end
end
