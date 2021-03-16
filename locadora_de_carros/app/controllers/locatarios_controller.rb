class LocatariosController < ApplicationController
  before_action :set_locatario, only: %i[ show edit update destroy ]

  # GET /locatarios or /locatarios.json
  def index
    @locatarios = Locatario.all
  end

  # GET /locatarios/1 or /locatarios/1.json
  def show
  end

  # GET /locatarios/new
  def new
    @locatario = Locatario.new
  end

  # GET /locatarios/1/edit
  def edit
  end

  # POST /locatarios or /locatarios.json
  def create
    @locatario = Locatario.new(locatario_params)

    respond_to do |format|
      if @locatario.save
        format.html { redirect_to @locatario, notice: "Locatario was successfully created." }
        format.json { render :show, status: :created, location: @locatario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @locatario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locatarios/1 or /locatarios/1.json
  def update
    respond_to do |format|
      if @locatario.update(locatario_params)
        format.html { redirect_to @locatario, notice: "Locatario was successfully updated." }
        format.json { render :show, status: :ok, location: @locatario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @locatario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locatarios/1 or /locatarios/1.json
  def destroy
    @locatario.destroy
    respond_to do |format|
      format.html { redirect_to locatarios_url, notice: "Locatario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locatario
      @locatario = Locatario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def locatario_params
      params.require(:locatario).permit(:nome, :data_nascimento, :sexo, :endereco, :sexo)
    end
end
