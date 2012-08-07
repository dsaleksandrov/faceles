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

  # GET /likes/1
  # GET /likes/1.json
  def show
    @like = Like.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @like }
    end
  end
 

  # GET /likes/1/edit
  def edit
    @like = Like.find(params[:id])
  end

  # POST /likes
  # POST /likes.json
  def create
    @like = Like.new(params[:like])

    respond_to do |format|
      if @like.save
        format.html { redirect_to @like, notice: 'Like was successfully created.' }
        format.json { render json: @like, status: :created, location: @like }
      else
        format.html { render action: "new" }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end
 end