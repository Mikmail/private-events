class InvitationsController < ApplicationController
  
  def new 
    @invitation = current_user.invitations.new 
  end 

  def create 
    @invitation = current_user.invitations.new(invitation_params)
    @invitation.inviter = current_user
    
    if @invitation.save
      redirect_to root_path
    else 
      redirect_to new_invitation_path
    end 

  end 

  private 

  def invitation_params
    params.require(:invitation).permit(:event_id, :user_id)
  end 
end
