class RegController < ApplicationController

  #before_action :authenticate_user!
  def index
  	# binding.pry
  end

  def create

  	reg=Reg.new(req_params)
  	if reg.save
      # binding.pry
      UserMailer.form(reg).deliver!
  		redirect_to root_path
  	end
  end

  def show
  	@regusers=Reg.all
  	# binding.pry
  end

  def update                                     #for displaying the text in text box
  
  	@regdata=Reg.find(params[:id])				
  end
 
 def regshow
   @reg = Reg.find(params[:id])
   @regusers=Reg.all
   @coment = Comment.all
 end
  
  def updatecreate								 #for updating
  	@regupdate=Reg.find(params[:id]).update(req_params)
  	if @regupdate
  		flash[:msg]="sucessfully updated "

        redirect_to request.referrer
  		
  		#redirect_to regupdate_path(params[:id])
  	end
  end

  def delete
  	@del=Reg.destroy(params[:id])

if @del

  		redirect_to request.referrer


  else
  	redirect_to root_path 


end

  end

 def comntcreat
  #binding.pry
  @reg = Reg.find(params[:id])

  @comnt = Comment.new(comnt)

  if @comnt.save
    redirect_to request.referrer
  end
   
 end




  private
  def req_params
  	
  	params.permit(:name,:email,:city,:states,:phno,:addr)

  end
  def comnt
        params.permit(:title,:message)
  end

end