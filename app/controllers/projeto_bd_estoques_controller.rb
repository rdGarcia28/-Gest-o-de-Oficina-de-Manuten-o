class ProjetoBdEstoquesController < ApplicationController
  before_action :set_projeto_bd_estoque, only: [:show, :edit, :update, :destroy]

  # GET /projeto_bd_estoques
  # GET /projeto_bd_estoques.json
  def index
    @projeto_bd_estoques = ProjetoBdEstoque.all
  end

  # GET /projeto_bd_estoques/1
  # GET /projeto_bd_estoques/1.json
  def show
  end

  # GET /projeto_bd_estoques/new
  def new
    @projeto_bd_estoque = ProjetoBdEstoque.new
  end

  # GET /projeto_bd_estoques/1/edit
  def edit
  end

  # POST /projeto_bd_estoques
  # POST /projeto_bd_estoques.json
  def create
    @projeto_bd_estoque = ProjetoBdEstoque.new(projeto_bd_estoque_params)

    respond_to do |format|
      if @projeto_bd_estoque.save
        format.html { redirect_to @projeto_bd_estoque, notice: 'Projeto bd estoque was successfully created.' }
        format.json { render :show, status: :created, location: @projeto_bd_estoque }
      else
        format.html { render :new }
        format.json { render json: @projeto_bd_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projeto_bd_estoques/1
  # PATCH/PUT /projeto_bd_estoques/1.json
  def update
    respond_to do |format|
      if @projeto_bd_estoque.update(projeto_bd_estoque_params)
        format.html { redirect_to @projeto_bd_estoque, notice: 'Projeto bd estoque was successfully updated.' }
        format.json { render :show, status: :ok, location: @projeto_bd_estoque }
      else
        format.html { render :edit }
        format.json { render json: @projeto_bd_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projeto_bd_estoques/1
  # DELETE /projeto_bd_estoques/1.json
  def destroy
    @projeto_bd_estoque.destroy
    respond_to do |format|
      format.html { redirect_to projeto_bd_estoques_url, notice: 'Projeto bd estoque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeto_bd_estoque
      @projeto_bd_estoque = ProjetoBdEstoque.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projeto_bd_estoque_params
      params.require(:projeto_bd_estoque).permit(:id, :componente, :quantidade, :valor)
    end
end
