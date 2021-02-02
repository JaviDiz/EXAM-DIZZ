<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="agregarCarrera">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Agregar Carrera</h5>
                <button class="close" data-dismiss="modal"> <span>&times;</span> </button>
            </div>

            <form action="${pageContext.request.contextPath}/carrera" method="POST" class="was-validated">

                <div class="modal-body">
                    <div class="form-group">
                        <label for="cliente">Cliente</label>
                        <select class="form-control"  name="cliente" id="cliente">
                            <option value="1">Emilio Merl</option>
                            <option value="2">Joan Sastre</option>
                            <option value="3">Elisa Gual</option>
                            <option value="4">Fernando Soler</option>
                            <option value="5">Ángela Gutiérrez</option>
                            <option value="6">Miguel López</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nomCarrera">Nombre de la Carrera</label>
                        <input type="text" class="form-control" id="nomCarrera" name="nomCarrera" required />
                    </div>
                    <div class="form-group">
                        <label for="data">Fecha</label>
                        <input type="date" class="form-control" id="data" name="data" required />
                    </div>
                    <div class="form-group">
                        <label for="horaInici">Hora inicio</label>
                        <input type="time" class="form-control" id="horaInici" name="horaInici" required />
                    </div>
                    <div class="form-group">
                        <label for="horaFi">Hora fin</label>
                        <input type="time" class="form-control" id="horaFi" name="horaFi" required />
                    </div>
                    <div class="form-group">
                        <label for="posicio">Posicion</label>
                        <input type="number" class="form-control" min="1" step="1" id="posicio" name="posicio" required />
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" type="submit">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>
