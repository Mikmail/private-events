class Invitation < ApplicationRecord
  belongs_to :user 
  belongs_to :inviter, class_name: "User"
  validates_uniqueness_of :user_id
end
