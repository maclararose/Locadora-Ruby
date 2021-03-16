require "test_helper"

class CarrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carro = carros(:one)
  end

  test "should get index" do
    get carros_url
    assert_response :success
  end

  test "should get new" do
    get new_carro_url
    assert_response :success
  end

  test "should create carro" do
    assert_difference('Carro.count') do
      post carros_url, params: { carro: { cor: @carro.cor, diaria: @carro.diaria, marca: @carro.marca, modelo: @carro.modelo, revisoes_em_dia: @carro.revisoes_em_dia } }
    end

    assert_redirected_to carro_url(Carro.last)
  end

  test "should show carro" do
    get carro_url(@carro)
    assert_response :success
  end

  test "should get edit" do
    get edit_carro_url(@carro)
    assert_response :success
  end

  test "should update carro" do
    patch carro_url(@carro), params: { carro: { cor: @carro.cor, diaria: @carro.diaria, marca: @carro.marca, modelo: @carro.modelo, revisoes_em_dia: @carro.revisoes_em_dia } }
    assert_redirected_to carro_url(@carro)
  end

  test "should destroy carro" do
    assert_difference('Carro.count', -1) do
      delete carro_url(@carro)
    end

    assert_redirected_to carros_url
  end
end
