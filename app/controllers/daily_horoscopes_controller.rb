class DailyHoroscopesController < ApplicationController
  before_action :set_daily_horoscope, only: [:show, :edit, :update, :destroy]

  # GET /daily_horoscopes
  # GET /daily_horoscopes.json
  def index
    @daily_horoscopes = DailyHoroscope.all
  end

  # GET /daily_horoscopes/1
  # GET /daily_horoscopes/1.json
  def show
  end

  # GET /daily_horoscopes/new
  def new
    @daily_horoscope = DailyHoroscope.new
  end

  # GET /daily_horoscopes/1/edit
  def edit
  end

  # POST /daily_horoscopes
  # POST /daily_horoscopes.json
  def create
    @daily_horoscope = DailyHoroscope.new(daily_horoscope_params)

    respond_to do |format|
      if @daily_horoscope.save
        format.html { redirect_to @daily_horoscope, notice: 'Daily horoscope was successfully created.' }
        format.json { render :show, status: :created, location: @daily_horoscope }
      else
        format.html { render :new }
        format.json { render json: @daily_horoscope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_horoscopes/1
  # PATCH/PUT /daily_horoscopes/1.json
  def update
    respond_to do |format|
      if @daily_horoscope.update(daily_horoscope_params)
        format.html { redirect_to @daily_horoscope, notice: 'Daily horoscope was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_horoscope }
      else
        format.html { render :edit }
        format.json { render json: @daily_horoscope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_horoscopes/1
  # DELETE /daily_horoscopes/1.json
  def destroy
    @daily_horoscope.destroy
    respond_to do |format|
      format.html { redirect_to daily_horoscopes_url, notice: 'Daily horoscope was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_horoscope
      @daily_horoscope = DailyHoroscope.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_horoscope_params
      params.require(:daily_horoscope).permit(:date, :sign_id, :day_of_the_week, :text, :color, :numbers)
    end
end
