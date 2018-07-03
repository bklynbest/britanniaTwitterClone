class BreetsController < ApplicationController
  before_action :set_breet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /breets
  # GET /breets.json
  def index
    @breets = Breet.all.order("created_at DESC")
    @breet= Breet.new
  end

  # GET /breets/1
  # GET /breets/1.json
  def show
  end

  # GET /breets/new
  def new
    @breet = current_user.breets.build
    
  end

  # GET /breets/1/edit
  def edit
  end

  # POST /breets
  # POST /breets.json
  def create
    @breet = current_user.breets.build(breet_params)

    respond_to do |format|
      if @breet.save
        format.html { redirect_to root_path, notice: 'Breet was successfully created.' }
        format.json { render :show, status: :created, location: @breet }
      else
        format.html { render :new }
        format.json { render json: @breet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breets/1
  # PATCH/PUT /breets/1.json
  def update
    respond_to do |format|
      if @breet.update(breet_params)
        format.html { redirect_to @breet, notice: 'Breet was successfully updated.' }
        format.json { render :show, status: :ok, location: @breet }
      else
        format.html { render :edit }
        format.json { render json: @breet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breets/1
  # DELETE /breets/1.json
  def destroy
    @breet.destroy
    respond_to do |format|
      format.html { redirect_to breets_url, notice: 'Breet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breet
      @breet = Breet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def breet_params
      params.require(:breet).permit(:breet)
    end
end
