class InvitationsController < ApplicationController
  
  def new 
    @invitation = current_user.invitations.new 
  end 

  def create 
    @invitation = current_user.invitations.new(invitation_params)
    @invitation.inviter.id = current_user.id
    
    if @invitation.save
      redirect_to root_path
    else 
      render :new 
    end 

  end 

  private 

  def invitation_params
    params.require(:invitation).permit(:event_id, :user_id)
  end 
end
