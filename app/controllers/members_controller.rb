class MembersController < ApplicationController


  def index
  	
  	@member=Member.new()
  end

  def create 
    binding.pry
  	@members=Member.new(req_params)
  	@members.password=params[:password_hash]
  	if @members.save
  		redirect_to edit_members_path
  	end

  end


  def show1
    @membersusers=Member.all
    # binding.pry
  end

#   def update                                     #for displaying the text in text box
  
#     @membersdata=Member.find(params[:id])        
#   end

#     def updatecreate                 #for updating
#     @membersupdate=Member.find(params[:id]).update(req_params)
#     if @membersupdate
#       flash[:msg]="sucessfully updated "

#         redirect_to request.referrer
      
#       #redirect_to regupdate_path(params[:id])
#     end
#   end

#   def delete
#     @del=Member.destroy(params[:id])

# if @del

#       redirect_to request.referrer


#   else
#     redirect_to root_path 


# end

#   end


  private
  def req_params
  	params.require('member').permit(:name,:email,:gender,:city,:hobbies,:image)
  end


end
#######################################


  

  

 