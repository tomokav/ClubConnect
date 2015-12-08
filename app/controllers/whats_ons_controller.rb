class WhatsOnsController < ApplicationController
  before_action :set_whats_on, only: [:show, :edit, :update, :destroy]

  # GET /whats_ons
  # GET /whats_ons.json
  def index
    @whats_ons = WhatsOn.all
  end

  # GET /whats_ons/1
  # GET /whats_ons/1.json
  def show
  end

  # GET /whats_ons/new
  def new
    @whats_on = WhatsOn.new
  end

  # GET /whats_ons/1/edit
  def edit
  end

  # POST /whats_ons
  # POST /whats_ons.json
  def create
    @whats_on = WhatsOn.new(whats_on_params)

    respond_to do |format|
      if @whats_on.save
        format.html { redirect_to @whats_on, notice: 'Whats on was successfully created.' }
        format.json { render action: 'show', status: :created, location: @whats_on }
      else
        format.html { render action: 'new' }
        format.json { render json: @whats_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whats_ons/1
  # PATCH/PUT /whats_ons/1.json
  def update
    respond_to do |format|
      if @whats_on.update(whats_on_params)
        format.html { redirect_to @whats_on, notice: 'Whats on was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @whats_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whats_ons/1
  # DELETE /whats_ons/1.json
  def destroy
    @whats_on.destroy
    respond_to do |format|
      format.html { redirect_to whats_ons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whats_on
      @whats_on = WhatsOn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whats_on_params
      params.require(:whats_on).permit(:Day, :Event, :Description, :Time, :Location)
    end
end
