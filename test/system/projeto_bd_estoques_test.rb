require "application_system_test_case"

class ProjetoBdEstoquesTest < ApplicationSystemTestCase
  setup do
    @projeto_bd_estoque = projeto_bd_estoques(:one)
  end

  test "visiting the index" do
    visit projeto_bd_estoques_url
    assert_selector "h1", text: "Projeto Bd Estoques"
  end

  test "creating a Projeto bd estoque" do
    visit projeto_bd_estoques_url
    click_on "New Projeto Bd Estoque"

    fill_in "Componente", with: @projeto_bd_estoque.componente
    fill_in "Id", with: @projeto_bd_estoque.id
    fill_in "Quantidade", with: @projeto_bd_estoque.quantidade
    fill_in "Valor", with: @projeto_bd_estoque.valor
    click_on "Create Projeto bd estoque"

    assert_text "Projeto bd estoque was successfully created"
    click_on "Back"
  end

  test "updating a Projeto bd estoque" do
    visit projeto_bd_estoques_url
    click_on "Edit", match: :first

    fill_in "Componente", with: @projeto_bd_estoque.componente
    fill_in "Id", with: @projeto_bd_estoque.id
    fill_in "Quantidade", with: @projeto_bd_estoque.quantidade
    fill_in "Valor", with: @projeto_bd_estoque.valor
    click_on "Update Projeto bd estoque"

    assert_text "Projeto bd estoque was successfully updated"
    click_on "Back"
  end

  test "destroying a Projeto bd estoque" do
    visit projeto_bd_estoques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projeto bd estoque was successfully destroyed"
  end
end
