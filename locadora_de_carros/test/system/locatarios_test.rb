require "application_system_test_case"

class LocatariosTest < ApplicationSystemTestCase
  setup do
    @locatario = locatarios(:one)
  end

  test "visiting the index" do
    visit locatarios_url
    assert_selector "h1", text: "Locatarios"
  end

  test "creating a Locatario" do
    visit locatarios_url
    click_on "New Locatario"

    fill_in "Data nascimento", with: @locatario.data_nascimento
    fill_in "Endereco", with: @locatario.endereco
    fill_in "Nome", with: @locatario.nome
    fill_in "Sexo", with: @locatario.sexo
    fill_in "Telefone", with: @locatario.telefone
    click_on "Create Locatario"

    assert_text "Locatario was successfully created"
    click_on "Back"
  end

  test "updating a Locatario" do
    visit locatarios_url
    click_on "Edit", match: :first

    fill_in "Data nascimento", with: @locatario.data_nascimento
    fill_in "Endereco", with: @locatario.endereco
    fill_in "Nome", with: @locatario.nome
    fill_in "Sexo", with: @locatario.sexo
    fill_in "Telefone", with: @locatario.telefone
    click_on "Update Locatario"

    assert_text "Locatario was successfully updated"
    click_on "Back"
  end

  test "destroying a Locatario" do
    visit locatarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Locatario was successfully destroyed"
  end
end
