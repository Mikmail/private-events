class Invitation < ApplicationRecord
  belongs_to :user 
  belongs_to :invitation
  belongs_to :inviter, class_name: "User"
  validates_uniqueness_of :user_id, 
    scope: "invitation_id",
    message: "is already going to this event"
end
