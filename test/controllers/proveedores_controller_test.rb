require 'test_helper'

class ProveedoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proveedore = proveedores(:one)
  end

  test "should get index" do
    get proveedores_url
    assert_response :success
  end

  test "should get new" do
    get new_proveedore_url
    assert_response :success
  end

  test "should create proveedore" do
    assert_difference('Proveedore.count') do
      post proveedores_url, params: { proveedore: { comentario: @proveedore.comentario, correo: @proveedore.correo, direccion: @proveedore.direccion, idCategoriaProv: @proveedore.idCategoriaProv, idCiudad: @proveedore.idCiudad, idDpto: @proveedore.idDpto, idEstadoProv: @proveedore.idEstadoProv, idProveedor: @proveedore.idProveedor, idTipoProv: @proveedore.idTipoProv, identificacion: @proveedore.identificacion, nombre: @proveedore.nombre, telefonos: @proveedore.telefonos } }
    end

    assert_redirected_to proveedore_url(Proveedore.last)
  end

  test "should show proveedore" do
    get proveedore_url(@proveedore)
    assert_response :success
  end

  test "should get edit" do
    get edit_proveedore_url(@proveedore)
    assert_response :success
  end

  test "should update proveedore" do
    patch proveedore_url(@proveedore), params: { proveedore: { comentario: @proveedore.comentario, correo: @proveedore.correo, direccion: @proveedore.direccion, idCategoriaProv: @proveedore.idCategoriaProv, idCiudad: @proveedore.idCiudad, idDpto: @proveedore.idDpto, idEstadoProv: @proveedore.idEstadoProv, idProveedor: @proveedore.idProveedor, idTipoProv: @proveedore.idTipoProv, identificacion: @proveedore.identificacion, nombre: @proveedore.nombre, telefonos: @proveedore.telefonos } }
    assert_redirected_to proveedore_url(@proveedore)
  end

  test "should destroy proveedore" do
    assert_difference('Proveedore.count', -1) do
      delete proveedore_url(@proveedore)
    end

    assert_redirected_to proveedores_url
  end
end
