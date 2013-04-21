module Forem
  class Membership < ActiveRecord::Base
    belongs_to :group
    belongs_to :member, :class_name => Forem.user_class.to_s

    validates :member_id, uniqueness: { scope: :group_id }

    attr_accessible :member_id, :group_id, :is_moderator, :status

    def is_moderator?
      is_moderator
    end

    def is_approved?
      status == "approved"
    end

    def is_pending?
      status == "pending"
    end

    def is_rejected?
      status == "rejected"
    end
  end
end
