require "application_system_test_case"

class ProjetoBdClientesTest < ApplicationSystemTestCase
  setup do
    @projeto_bd_cliente = projeto_bd_clientes(:one)
  end

  test "visiting the index" do
    visit projeto_bd_clientes_url
    assert_selector "h1", text: "Projeto Bd Clientes"
  end

  test "creating a Projeto bd cliente" do
    visit projeto_bd_clientes_url
    click_on "New Projeto Bd Cliente"

    fill_in "Datainicial", with: @projeto_bd_cliente.dataInicial
    fill_in "Descricao", with: @projeto_bd_cliente.descricao
    fill_in "Id", with: @projeto_bd_cliente.id
    fill_in "Nome", with: @projeto_bd_cliente.nome
    fill_in "Orcamento", with: @projeto_bd_cliente.orcamento
    fill_in "Previsaoentrega", with: @projeto_bd_cliente.previsaoEntrega
    fill_in "Status", with: @projeto_bd_cliente.status
    click_on "Create Projeto bd cliente"

    assert_text "Projeto bd cliente was successfully created"
    click_on "Back"
  end

  test "updating a Projeto bd cliente" do
    visit projeto_bd_clientes_url
    click_on "Edit", match: :first

    fill_in "Datainicial", with: @projeto_bd_cliente.dataInicial
    fill_in "Descricao", with: @projeto_bd_cliente.descricao
    fill_in "Id", with: @projeto_bd_cliente.id
    fill_in "Nome", with: @projeto_bd_cliente.nome
    fill_in "Orcamento", with: @projeto_bd_cliente.orcamento
    fill_in "Previsaoentrega", with: @projeto_bd_cliente.previsaoEntrega
    fill_in "Status", with: @projeto_bd_cliente.status
    click_on "Update Projeto bd cliente"

    assert_text "Projeto bd cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Projeto bd cliente" do
    visit projeto_bd_clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projeto bd cliente was successfully destroyed"
  end
end
