require 'test_helper'

class ProjetoBdEstoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projeto_bd_estoque = projeto_bd_estoques(:one)
  end

  test "should get index" do
    get projeto_bd_estoques_url
    assert_response :success
  end

  test "should get new" do
    get new_projeto_bd_estoque_url
    assert_response :success
  end

  test "should create projeto_bd_estoque" do
    assert_difference('ProjetoBdEstoque.count') do
      post projeto_bd_estoques_url, params: { projeto_bd_estoque: { componente: @projeto_bd_estoque.componente, id: @projeto_bd_estoque.id, quantidade: @projeto_bd_estoque.quantidade, valor: @projeto_bd_estoque.valor } }
    end

    assert_redirected_to projeto_bd_estoque_url(ProjetoBdEstoque.last)
  end

  test "should show projeto_bd_estoque" do
    get projeto_bd_estoque_url(@projeto_bd_estoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_projeto_bd_estoque_url(@projeto_bd_estoque)
    assert_response :success
  end

  test "should update projeto_bd_estoque" do
    patch projeto_bd_estoque_url(@projeto_bd_estoque), params: { projeto_bd_estoque: { componente: @projeto_bd_estoque.componente, id: @projeto_bd_estoque.id, quantidade: @projeto_bd_estoque.quantidade, valor: @projeto_bd_estoque.valor } }
    assert_redirected_to projeto_bd_estoque_url(@projeto_bd_estoque)
  end

  test "should destroy projeto_bd_estoque" do
    assert_difference('ProjetoBdEstoque.count', -1) do
      delete projeto_bd_estoque_url(@projeto_bd_estoque)
    end

    assert_redirected_to projeto_bd_estoques_url
  end
end
