class LikesController < ApplicationController
  # GET /likes
  # GET /likes.json
  def index
  email =  params[:email]
  unless email.nil?
    logger.info("!!!emailinfo" + email);
    @like=Like.new
    @like.email=email
  
  if  @like.save
    respond_to do |format|
    format.html 
    format.json{ render :json => @like }
    format.js
    end
  else
    respond_to do |format|
      format.html  
      format.json  { render :json => @like.errors,
                    :status => :unprocessable_entity }
      format.js
    end
  end
  

  else
 
    respond_to do |format|
      format.html 
      format.json { render json: @likes }
      format.js
    end
  end
  end

 end