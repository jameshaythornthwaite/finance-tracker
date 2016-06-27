class FriendshipsController < ApplicationController
  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    #debugger
    @friendship.destroy
    respond_to do |format|
      #debugger
      format.html { redirect_to my_friends_path }
    end
  end
end
