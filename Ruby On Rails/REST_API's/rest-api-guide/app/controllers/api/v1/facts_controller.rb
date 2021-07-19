class Api::V1::FactsController < ApplicationController
  before_action :find_fact, only: %i[ show update destroy ]

  # GET /facts or /facts.json
  def index
    @facts = Fact.all
    render json: @facts
  end

  # GET /facts/1 or /facts/1.json
  def show
    render json: @fact
  end

  # GET /facts/new
  def new
    @facts = Fact.new
  end

  # GET /facts/1/edit
  def edit
  end

  # POST /facts or /facts.json
  def create
    @fact = Fact.new(fact_params)

    # respond_to do |format|
      if @fact.save
        render json: @fact
        # format.html { redirect_to @fact, notice: "Fact was successfully created." }
        # format.json { render :show, status: :created, location: @fact }
      else
        render error: {error: 'Unable to Create Fact.'} , status: 400
        # format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @fact.errors, status: :unprocessable_entity }
      end

  end

  # PATCH/PUT /facts/1 or /facts/1.json
  def update
    # @fact = Fact.find(params[:id])
    # respond_to do |format|
    if @fact
      @fact.update(fact_params)
      render json: {message: 'Fact Successfully Updated.'} , status: 200
        # format.html { redirect_to @user, notice: "User was successfully updated." }
        # format.json { render :show, status: :ok, location: @user }
      else
        render json: {error: 'Unable to update Fact.'} , status: 400
        # format.html { render :edit, status: :unprocessable_entity }
        # format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  
  end


  # DELETE /facts/1 or /facts/1.json
  def destroy
    # @fact = Fact.find(params[:id])
    if @fact
      @fact.destroy
      render json: {message: 'Fact Successfully Deleted.'} , status: 200
      # respond_to do |format|
      # format.html { redirect_to games_url, notice: "Game was successfully destroyed." }
      # format.json { head :no_content }
      else
        render json: {error: 'Unable to delete Fact.'} , status: 400
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_game
    #   @game = Game.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def fact_params
      params.require(:fact).permit(:fact , :likes , :user_id)
    end

    def find_fact
      @fact = Fact.find(params[:id])
    end
end
