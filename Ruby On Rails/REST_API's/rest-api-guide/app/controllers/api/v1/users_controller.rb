class Api::V1::UsersController < ApplicationController

  
    # GET /users or /users.json
    def index
      users = User.all
      render json: {
        data: ActiveModelSerializers::SerializableResource.new(users, each_serializer: UserSerializer),
        # message: ['User list fetched successfully'],
        status: 200,
        type: 'Success'
      }
    end
  
    # GET /users/:id or /users/:id.json
    def show
      user = User.find(params[:id])
      render json: {
        data: ActiveModelSerializers::SerializableResource.new(user, each_serializer: UserSerializer),
        # message: ['User list fetched successfully'],
        status: 200,
        type: 'Success'
      }
    end
  
    # GET /users/new
    def new
      user = User.new
    end
  
    # GET /users/1/edit
    def edit
    end
  
    # POST /users or /users.json
    def create
      user = User.new(user_params)
  
      # respond_to do |format|
        if user.save
          render json: {
          data: ActiveModelSerializers::SerializableResource.new(user, each_serializer: UserSerializer),
          # message: ['User list fetched successfully'],
          status: 200,
          type: 'Success'
        }
          # format.html { redirect_to @user, notice: "User was successfully created." }
          # format.json { render :show, status: :created, location: @user }
        else
          render error: {error: 'Unable to create a user'} , status: 400
          # format.html { render :new, status: :unprocessable_entity }
          # format.json { render json: @user.errors, status: :unprocessable_entity }
        end

    end
  
    # PATCH/PUT /users/1 or /users/1.json
    def update
      user = User.find(params[:id])
      # respond_to do |format|
      if user
        user.update(user_params)
        # render json: {message: 'User Successfully Updated.'} , status: 200
          # format.html { redirect_to @user, notice: "User was successfully updated." }
          # format.json { render :show, status: :ok, location: @user }
        else
          render json: {error: 'Unable to update User.'} , status: 400
          # format.html { render :edit, status: :unprocessable_entity }
          # format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    
    end
  
    # DELETE /users/1 or /users/1.json
    def destroy
      user = User.find(params[:id])
      if user
        user.destroy
        render json: {message: 'User Successfully Deleted.'} , status: 200
      else
        render json: {error: 'Unable to Delete User.'} , status: 400
      # respond_to do |format|
      #   format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      #   format.json { head :no_content }
      end
  
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      # def set_game
      #   @game = Game.find(params[:id])
      # end
  
      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:username, :password)
      end

end
