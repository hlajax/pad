class LamairiesController < ApplicationController
  before_action :set_lamairy, only: [:show, :edit, :update, :destroy]

  # GET /lamairies
  # GET /lamairies.json
  def index
    @lamairies = Lamairie.all
  end

  # GET /lamairies/1
  # GET /lamairies/1.json
  def show
  end

  # GET /lamairies/new
  def new
    @lamairy = Lamairie.new
  end

  # GET /lamairies/1/edit
  def edit
  end

  # POST /lamairies
  # POST /lamairies.json
  def create
    @lamairy = Lamairie.new(lamairy_params)

    respond_to do |format|
      if @lamairy.save
        format.html { redirect_to @lamairy, notice: 'Lamairie was successfully created.' }
        format.json { render :show, status: :created, location: @lamairy }
      else
        format.html { render :new }
        format.json { render json: @lamairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lamairies/1
  # PATCH/PUT /lamairies/1.json
  def update
    respond_to do |format|
      if @lamairy.update(lamairy_params)
        format.html { redirect_to @lamairy, notice: 'Lamairie was successfully updated.' }
        format.json { render :show, status: :ok, location: @lamairy }
      else
        format.html { render :edit }
        format.json { render json: @lamairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lamairies/1
  # DELETE /lamairies/1.json
  def destroy
    @lamairy.destroy
    respond_to do |format|
      format.html { redirect_to lamairies_url, notice: 'Lamairie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lamairy
      @lamairy = Lamairie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lamairy_params
      params.require(:lamairy).permit(:nom, :description)
    end
end
