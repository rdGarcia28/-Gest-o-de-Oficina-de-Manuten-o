require 'test_helper'

class ProjetoBdClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projeto_bd_cliente = projeto_bd_clientes(:one)
  end

  test "should get index" do
    get projeto_bd_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_projeto_bd_cliente_url
    assert_response :success
  end

  test "should create projeto_bd_cliente" do
    assert_difference('ProjetoBdCliente.count') do
      post projeto_bd_clientes_url, params: { projeto_bd_cliente: { dataInicial: @projeto_bd_cliente.dataInicial, descricao: @projeto_bd_cliente.descricao, id: @projeto_bd_cliente.id, nome: @projeto_bd_cliente.nome, orcamento: @projeto_bd_cliente.orcamento, previsaoEntrega: @projeto_bd_cliente.previsaoEntrega, status: @projeto_bd_cliente.status } }
    end

    assert_redirected_to projeto_bd_cliente_url(ProjetoBdCliente.last)
  end

  test "should show projeto_bd_cliente" do
    get projeto_bd_cliente_url(@projeto_bd_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_projeto_bd_cliente_url(@projeto_bd_cliente)
    assert_response :success
  end

  test "should update projeto_bd_cliente" do
    patch projeto_bd_cliente_url(@projeto_bd_cliente), params: { projeto_bd_cliente: { dataInicial: @projeto_bd_cliente.dataInicial, descricao: @projeto_bd_cliente.descricao, id: @projeto_bd_cliente.id, nome: @projeto_bd_cliente.nome, orcamento: @projeto_bd_cliente.orcamento, previsaoEntrega: @projeto_bd_cliente.previsaoEntrega, status: @projeto_bd_cliente.status } }
    assert_redirected_to projeto_bd_cliente_url(@projeto_bd_cliente)
  end

  test "should destroy projeto_bd_cliente" do
    assert_difference('ProjetoBdCliente.count', -1) do
      delete projeto_bd_cliente_url(@projeto_bd_cliente)
    end

    assert_redirected_to projeto_bd_clientes_url
  end
end
