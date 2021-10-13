<?php
if (isset($conexion)) {
    ?>
	<div id="nuevoCliente" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"><i class='fa fa-edit'></i> Nuevo Cliente</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" method="post" id="guardar_cliente" name="guardar_cliente">
						<div id="resultados_ajax"></div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label for="nombre" class="control-label">Nombre: <strong> *</strong></label>
									<input type="text" class="form-control UpperCase" id="nombre" name="nombre" autocomplete="off" required>
								</div>
							</div>
						</div>
						<div class="row">
						<div class="col-md-6">
								<div class="form-group">
									<label for="mod_fiscal" class="control-label"><?php echo $doc_cliente; ?>:</label>
									<input type="text" class="form-control" id="mod_fiscal" name="mod_fiscal" autocomplete="off">
								</div>
						    </div>		
							<div class="col-md-6">
								<div class="form-group">
									<label for="telefono" class="control-label">Telefono: <strong> *</strong></label>
									<input type="text" class="form-control" id="telefono" name="telefono" autocomplete="off" required>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label for="direccion" class="control-label">Dirección: <strong> *</strong></label>
									<textarea class="form-control UpperCase"  id="direccion" name="direccion" maxlength="255" autocomplete="off" required></textarea>
								</div>
							</div>
						</div>
						<div class="col-md-6">
								<div class="form-group">
									<label for="Ciudad" class="control-label">Ciudad: <strong> *</strong></label>
									<input type="text" class="form-control" id="Ciudad" name="Ciudad" autocomplete="off" required>
								</div>
							</div>
						<div class="row">
							<div class="col-md-8">
								<div class="form-group">
									<label for="encargado" class="control-label">Email: <strong> *</strong></label>
									<input type="email" class="form-control" id="email" name="email" autocomplete="off" required>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="estado" class="control-label">Estado: <strong> *</strong></label>
									<select class="form-control" id="estado" name="estado" required>
										<option value="">-- Selecciona --</option>
										<option value="1" selected>Activo</option>
										<option value="0">Inactivo</option>
									</select>
								</div>
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Cerrar</button>
						<button type="submit" class="btn btn-primary waves-effect waves-light" id="guardar_datos">Guardar</button>
					</div>
				</form>
			</div>
		</div>
	</div><!-- /.modal -->
	<?php
}
?>