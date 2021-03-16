require "application_system_test_case"

class EmprestimosTest < ApplicationSystemTestCase
  setup do
    @emprestimo = emprestimos(:one)
  end

  test "visiting the index" do
    visit emprestimos_url
    assert_selector "h1", text: "Emprestimos"
  end

  test "creating a Emprestimo" do
    visit emprestimos_url
    click_on "New Emprestimo"

    fill_in "Data check in", with: @emprestimo.data_check_in
    fill_in "Data check out", with: @emprestimo.data_check_out
    fill_in "Limite km", with: @emprestimo.limite_km
    fill_in "Wepay access token", with: @emprestimo.wepay_access_token
    fill_in "Wepay account", with: @emprestimo.wepay_account_id
    click_on "Create Emprestimo"

    assert_text "Emprestimo was successfully created"
    click_on "Back"
  end

  test "updating a Emprestimo" do
    visit emprestimos_url
    click_on "Edit", match: :first

    fill_in "Data check in", with: @emprestimo.data_check_in
    fill_in "Data check out", with: @emprestimo.data_check_out
    fill_in "Limite km", with: @emprestimo.limite_km
    fill_in "Wepay access token", with: @emprestimo.wepay_access_token
    fill_in "Wepay account", with: @emprestimo.wepay_account_id
    click_on "Update Emprestimo"

    assert_text "Emprestimo was successfully updated"
    click_on "Back"
  end

  test "destroying a Emprestimo" do
    visit emprestimos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emprestimo was successfully destroyed"
  end
end
