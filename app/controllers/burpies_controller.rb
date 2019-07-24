class BurpiesController < ApplicationController
  before_action :set_burpy, only: [:show, :edit, :update, :destroy]

  # GET /burpies
  # GET /burpies.json
  def index
    @burpies = Burpy.all
  end

  # GET /burpies/1
  # GET /burpies/1.json
  def show
  end

  # GET /burpies/new
  def new
    @burpy = Burpy.new
  end

  # GET /burpies/1/edit
  def edit
  end

  # POST /burpies
  # POST /burpies.json
  def create
    @burpy = Burpy.new(burpy_params)

    respond_to do |format|
      if @burpy.save
        format.html { redirect_to @burpy, notice: 'Burpy was successfully created.' }
        format.json { render :show, status: :created, location: @burpy }
      else
        format.html { render :new }
        format.json { render json: @burpy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /burpies/1
  # PATCH/PUT /burpies/1.json
  def update
    respond_to do |format|
      if @burpy.update(burpy_params)
        format.html { redirect_to @burpy, notice: 'Burpy was successfully updated.' }
        format.json { render :show, status: :ok, location: @burpy }
      else
        format.html { render :edit }
        format.json { render json: @burpy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /burpies/1
  # DELETE /burpies/1.json
  def destroy
    @burpy.destroy
    respond_to do |format|
      format.html { redirect_to burpies_url, notice: 'Burpy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_burpy
      @burpy = Burpy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def burpy_params
      params.require(:burpy).permit(:reason, :person)
    end
end
