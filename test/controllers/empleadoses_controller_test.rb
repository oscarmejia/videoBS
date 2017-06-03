require 'test_helper'

class EmpleadosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empleados = empleadoses(:one)
  end

  test "should get index" do
    get empleadoses_url
    assert_response :success
  end

  test "should get new" do
    get new_empleados_url
    assert_response :success
  end

  test "should create empleados" do
    assert_difference('Empleados.count') do
      post empleadoses_url, params: { empleados: { apellidodocumento: @empleados.apellidodocumento, direccion: @empleados.direccion, email: @empleados.email, fechaIn: @empleados.fechaIn, fechaNa: @empleados.fechaNa, fechafin: @empleados.fechafin, nombre: @empleados.nombre, telefono: @empleados.telefono } }
    end

    assert_redirected_to empleados_url(Empleados.last)
  end

  test "should show empleados" do
    get empleados_url(@empleados)
    assert_response :success
  end

  test "should get edit" do
    get edit_empleados_url(@empleados)
    assert_response :success
  end

  test "should update empleados" do
    patch empleados_url(@empleados), params: { empleados: { apellidodocumento: @empleados.apellidodocumento, direccion: @empleados.direccion, email: @empleados.email, fechaIn: @empleados.fechaIn, fechaNa: @empleados.fechaNa, fechafin: @empleados.fechafin, nombre: @empleados.nombre, telefono: @empleados.telefono } }
    assert_redirected_to empleados_url(@empleados)
  end

  test "should destroy empleados" do
    assert_difference('Empleados.count', -1) do
      delete empleados_url(@empleados)
    end

    assert_redirected_to empleadoses_url
  end
end
