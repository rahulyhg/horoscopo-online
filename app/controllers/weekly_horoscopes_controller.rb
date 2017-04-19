class WeeklyHoroscopesController < ApplicationController
  before_action :set_weekly_horoscope, only: [:show, :edit, :update, :destroy]

  # GET /weekly_horoscopes
  # GET /weekly_horoscopes.json
  def index
    @weekly_horoscopes = WeeklyHoroscope.all
  end

  # GET /weekly_horoscopes/1
  # GET /weekly_horoscopes/1.json
  def show
  end

  # GET /weekly_horoscopes/new
  def new
    @weekly_horoscope = WeeklyHoroscope.new
  end

  # GET /weekly_horoscopes/1/edit
  def edit
  end

  # POST /weekly_horoscopes
  # POST /weekly_horoscopes.json
  def create
    @weekly_horoscope = WeeklyHoroscope.new(weekly_horoscope_params)

    respond_to do |format|
      if @weekly_horoscope.save
        format.html { redirect_to @weekly_horoscope, notice: 'Weekly horoscope was successfully created.' }
        format.json { render :show, status: :created, location: @weekly_horoscope }
      else
        format.html { render :new }
        format.json { render json: @weekly_horoscope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_horoscopes/1
  # PATCH/PUT /weekly_horoscopes/1.json
  def update
    respond_to do |format|
      if @weekly_horoscope.update(weekly_horoscope_params)
        format.html { redirect_to @weekly_horoscope, notice: 'Weekly horoscope was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekly_horoscope }
      else
        format.html { render :edit }
        format.json { render json: @weekly_horoscope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_horoscopes/1
  # DELETE /weekly_horoscopes/1.json
  def destroy
    @weekly_horoscope.destroy
    respond_to do |format|
      format.html { redirect_to weekly_horoscopes_url, notice: 'Weekly horoscope was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekly_horoscope
      @weekly_horoscope = WeeklyHoroscope.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekly_horoscope_params
      params.require(:weekly_horoscope).permit(:sign_id, :initial_date, :final_date, :text)
    end
end
