class ProjetoBdClientesController < ApplicationController
  before_action :set_projeto_bd_cliente, only: [:show, :edit, :update, :destroy]

  # GET /projeto_bd_clientes
  # GET /projeto_bd_clientes.json
  def index
    @projeto_bd_clientes = ProjetoBdCliente.all
  end

  # GET /projeto_bd_clientes/1
  # GET /projeto_bd_clientes/1.json
  def show
  end

  # GET /projeto_bd_clientes/new
  def new
    @projeto_bd_cliente = ProjetoBdCliente.new
  end

  # GET /projeto_bd_clientes/1/edit
  def edit
  end

  # POST /projeto_bd_clientes
  # POST /projeto_bd_clientes.json
  def create
    @projeto_bd_cliente = ProjetoBdCliente.new(projeto_bd_cliente_params)

    respond_to do |format|
      if @projeto_bd_cliente.save
        format.html { redirect_to @projeto_bd_cliente, notice: 'Projeto bd cliente was successfully created.' }
        format.json { render :show, status: :created, location: @projeto_bd_cliente }
      else
        format.html { render :new }
        format.json { render json: @projeto_bd_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projeto_bd_clientes/1
  # PATCH/PUT /projeto_bd_clientes/1.json
  def update
    respond_to do |format|
      if @projeto_bd_cliente.update(projeto_bd_cliente_params)
        format.html { redirect_to @projeto_bd_cliente, notice: 'Projeto bd cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @projeto_bd_cliente }
      else
        format.html { render :edit }
        format.json { render json: @projeto_bd_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projeto_bd_clientes/1
  # DELETE /projeto_bd_clientes/1.json
  def destroy
    @projeto_bd_cliente.destroy
    respond_to do |format|
      format.html { redirect_to projeto_bd_clientes_url, notice: 'Projeto bd cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeto_bd_cliente
      @projeto_bd_cliente = ProjetoBdCliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projeto_bd_cliente_params
      params.require(:projeto_bd_cliente).permit(:id, :nome, :descricao, :dataInicial, :previsaoEntrega, :status, :orcamento)
    end
end
