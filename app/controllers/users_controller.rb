class UsersController < ApplicationController
  # GET /users
  def index

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /users/1
  def show
    #@user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb

    end
  end

  # GET /users/new
  def new
    if @user_session then @user_session.destroy end
    @user = User.new
   
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /users/1/edit
  def edit
    @user = current_user
  end

  # POST /users
  # POST /users.xml
  def create
  
    @user = User.new(params[:user])
  

    respond_to do |format|
      if @user.save then
        flash[:notice] = 'Registration successful.'
        format.html { redirect_to(ratings_url) }

      else
        format.html { render :action => "new" }

      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'Password successfully updated.'
        format.html { redirect_to(ratings_url) }
      else
        format.html { render :action => "edit" }

      end
    end
  end


end
