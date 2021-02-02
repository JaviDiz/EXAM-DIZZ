<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es-ES" variant="euro" />

<section id="carreras">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<h4>Listado de Carreras</h4>
					</div>
					<table class="table table-striped">
						<thead class="thead-dark">
							<tr>
								<th>#</th>
								<th>Nombre</th>
								<th>Posición</th>
							</tr>
						</thead>
						<tbody id="table-body">
							<!-- Iteramos cada elemento de la lista de clientes -->
							<c:forEach var="carrera" items="${carreras}" varStatus="status">
									<tr>
										<td class="text-danger">${status.count}</td>
										<td>${carrera.nom}</td>
										<td>${carrera.posicio}</td>
									</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
		</div>
	</div>
</section>
