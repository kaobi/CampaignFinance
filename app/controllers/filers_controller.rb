class FilersController < ApplicationController
  before_action :set_filer, only: [:show, :edit, :update, :destroy]

  # GET /filers
  # GET /filers.json
  def index
    @filers = Filer.all
  end

  # GET /filers/1
  # GET /filers/1.json
  def show
  end

  # GET /filers/new
  def new
    @filer = Filer.new
  end

  # GET /filers/1/edit
  def edit
  end

  # POST /filers
  # POST /filers.json
  def create
    @filer = Filer.new(filer_params)

    respond_to do |format|
      if @filer.save
        format.html { redirect_to @filer, notice: 'Filer was successfully created.' }
        format.json { render :show, status: :created, location: @filer }
      else
        format.html { render :new }
        format.json { render json: @filer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filers/1
  # PATCH/PUT /filers/1.json
  def update
    respond_to do |format|
      if @filer.update(filer_params)
        format.html { redirect_to @filer, notice: 'Filer was successfully updated.' }
        format.json { render :show, status: :ok, location: @filer }
      else
        format.html { render :edit }
        format.json { render json: @filer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filers/1
  # DELETE /filers/1.json
  def destroy
    @filer.destroy
    respond_to do |format|
      format.html { redirect_to filers_url, notice: 'Filer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filer
      @filer = Filer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filer_params
      params.require(:filer).permit(:user_account_id, :filer_type_id, :state_id, :office_held_id, :office_sought_id, :first_name, :mi, :last_name, :committee, :address, :secondary_address, :suite, :city, :zip_code, :phone, :extension, :email, :hand_deliver, :receive_date, :postmark, :active, :date_created)
    end
end
