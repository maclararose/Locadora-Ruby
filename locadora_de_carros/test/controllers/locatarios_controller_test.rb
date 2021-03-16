require "test_helper"

class LocatariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locatario = locatarios(:one)
  end

  test "should get index" do
    get locatarios_url
    assert_response :success
  end

  test "should get new" do
    get new_locatario_url
    assert_response :success
  end

  test "should create locatario" do
    assert_difference('Locatario.count') do
      post locatarios_url, params: { locatario: { data_nascimento: @locatario.data_nascimento, endereco: @locatario.endereco, nome: @locatario.nome, sexo: @locatario.sexo } }
    end

    assert_redirected_to locatario_url(Locatario.last)
  end

  test "should show locatario" do
    get locatario_url(@locatario)
    assert_response :success
  end

  test "should get edit" do
    get edit_locatario_url(@locatario)
    assert_response :success
  end

  test "should update locatario" do
    patch locatario_url(@locatario), params: { locatario: { data_nascimento: @locatario.data_nascimento, endereco: @locatario.endereco, nome: @locatario.nome, sexo: @locatario.sexo } }
    assert_redirected_to locatario_url(@locatario)
  end

  test "should destroy locatario" do
    assert_difference('Locatario.count', -1) do
      delete locatario_url(@locatario)
    end

    assert_redirected_to locatarios_url
  end
end
