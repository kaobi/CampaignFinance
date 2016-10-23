class CoverSheetsController < ApplicationController
  before_action :set_cover_sheet, only: [:show, :edit, :update, :destroy]

  # GET /cover_sheets
  # GET /cover_sheets.json
  def index
    @cover_sheets = CoverSheet.all
  end

  # GET /cover_sheets/1
  # GET /cover_sheets/1.json
  def show
  end

  # GET /cover_sheets/new
  def new
    @cover_sheet = CoverSheet.new
  end

  # GET /cover_sheets/1/edit
  def edit
  end

  # POST /cover_sheets
  # POST /cover_sheets.json
  def create
    @cover_sheet = CoverSheet.new(cover_sheet_params)

    respond_to do |format|
      if @cover_sheet.save
        format.html { redirect_to @cover_sheet, notice: 'Cover sheet was successfully created.' }
        format.json { render :show, status: :created, location: @cover_sheet }
      else
        format.html { render :new }
        format.json { render json: @cover_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cover_sheets/1
  # PATCH/PUT /cover_sheets/1.json
  def update
    respond_to do |format|
      if @cover_sheet.update(cover_sheet_params)
        format.html { redirect_to @cover_sheet, notice: 'Cover sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @cover_sheet }
      else
        format.html { render :edit }
        format.json { render json: @cover_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cover_sheets/1
  # DELETE /cover_sheets/1.json
  def destroy
    @cover_sheet.destroy
    respond_to do |format|
      format.html { redirect_to cover_sheets_url, notice: 'Cover sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cover_sheet
      @cover_sheet = CoverSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cover_sheet_params
      params.require(:cover_sheet).permit(:report_id, :candidate_id, :treasurer_id, :election_type_id, :officeheld_id, :offices_sought_id, :period_begin, :period_end, :election_date, :created_date)
    end
end
