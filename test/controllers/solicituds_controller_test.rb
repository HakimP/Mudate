require 'test_helper'

class SolicitudsControllerTest < ActionController::TestCase
  setup do
    @solicitud = solicituds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicituds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post :create, solicitud: { empresa_servicio_id: @solicitud.empresa_servicio_id, fech_inicio: @solicitud.fech_inicio, fecha_cita: @solicitud.fecha_cita, fecha_entrega_caja: @solicitud.fecha_entrega_caja, fecha_fin: @solicitud.fecha_fin, folio: @solicitud.folio }
    end

    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should show solicitud" do
    get :show, id: @solicitud
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud
    assert_response :success
  end

  test "should update solicitud" do
    patch :update, id: @solicitud, solicitud: { empresa_servicio_id: @solicitud.empresa_servicio_id, fech_inicio: @solicitud.fech_inicio, fecha_cita: @solicitud.fecha_cita, fecha_entrega_caja: @solicitud.fecha_entrega_caja, fecha_fin: @solicitud.fecha_fin, folio: @solicitud.folio }
    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete :destroy, id: @solicitud
    end

    assert_redirected_to solicituds_path
  end
end
