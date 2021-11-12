<?php
if (isset($conexion)) {
?>
	<div id="nuevoProducto" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"><i class='fa fa-edit'></i> Nuevo Producto</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" method="post" id="guardar_producto" name="guardar_producto">
						<div id="resultados_ajax"></div>

						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="#info" data-toggle="tab" aria-expanded="false" class="nav-link active">
									Datos Básicos
								</a>
							</li>
							<li class="nav-item">
								<a href="#precios" data-toggle="tab" aria-expanded="true" class="nav-link">
									Precios y Stock
								</a>
							</li>
							<li class="nav-item">
								<a href="#img" data-toggle="tab" aria-expanded="true" class="nav-link">
									Imagen
								</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="info">

								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label for="codigo" class="control-label">Ítem:</label>
											<div id="cod_resultado"></div><!-- Carga los datos ajax del incremento de la fatura -->
										</div>

									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label for="nombre" class="control-label">Nombre:</label>
											<input type="text" class="form-control UpperCase" id="nombre" name="nombre" autocomplete="off" required>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label for="descripcion" class="control-label">Descripción</label>
											<textarea class="form-control UpperCase" id="descripcion" name="descripcion" maxlength="255" autocomplete="off"></textarea>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="estado" class="control-label">Estado:</label>
											<select class="form-control" id="estado" name="estado" required>
												<option value="">-- Selecciona --</option>
												<option value="1" selected>Activo</option>
												<option value="0">Inactivo</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="impuesto" class="control-label">Impuesto:</label>
											<select class="form-control" id="impuesto" name="impuesto" required>
												<option value="">-- Selecciona --</option>
												<option value="0" selected>Incluido</option>
												<option value="1">No incluido</option>
											</select>
										</div>
									</div>
								</div>

							</div>


							

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label for="precio" class="control-label">Precio Venta:</label>
										<input type="text" class="form-control" id="precio" name="precio" autocomplete="off" onkeyup="this.value=Numeros(this.value)" title="Ingresa sólo números con 0 ó 2 decimales" maxlength="8">
									</div>
								</div>
							</div>


							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label for="inv" class="control-label">Maneja Inventario:</label>
										<select class="form-control" id="inv" name="inv" required>
											<option value="">- Selecciona -</option>
											<option value="0">Si</option>
											<option value="1">No</option>
										</select>
									</div>
								</div>
							</div>





							<div class="tab-pane fade" id="img">

								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="image" class="col-sm-2 control-label">Imagen</label>
											<div class="col-sm-10">
												<input type="file" class='form-control' name="imagefile" id="imagefile" onchange="upload_image(<?php echo $product_id; ?>);">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-sm-6 col-lg-8 col-md-4 webdesign illustrator">
										<div class="gal-detail thumb">
											<div id="load_img">
												<img src="../../img/productos/default.jpg" class="thumb-img" width="200" alt="Bussines profile picture">
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Agregar archivo</button>
					<!--<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Cerrar</button>-->
					<button type="submit" class="btn btn-primary waves-effect waves-light" id="guardar_datos">Guardar</button>
				</div>
				</form>
			</div>
		</div>
	</div><!-- /.modal -->
<?php
}
?>
<script type="text/javascript">
	function Numeros(string) { //Solo numeros
		var out = '';
		var filtro = '1234567890'; //Caracteres validos

		//Recorrer el texto y verificar si el caracter se encuentra en la lista de validos
		for (var i = 0; i < string.length; i++)
			if (filtro.indexOf(string.charAt(i)) != -1)
				//Se añaden a la salida los caracteres validos
				out += string.charAt(i);

		//Retornar valor filtrado
		return out;
	}
</script>