<?php
session_start();
if (!isset($_SESSION['user_login_status']) and $_SESSION['user_login_status'] != 1) {
    header("location: ../../login.php");
    exit;
}
/* Connect To Database*/
require_once "../db.php"; //Contiene las variables de configuracion para conectar a la base de datos
require_once "../php_conexion.php"; //Contiene funcion que conecta a la base de datos
//Archivo de funciones PHP
require_once "../funciones.php";
//Inicia Control de Permisos
include "../permisos.php";
$user_id = $_SESSION['id_users'];
get_cadena($user_id);
$modulo = "Ventas";
permisos($modulo, $cadena_permisos);
//Finaliza Control de Permisos
$title          = "Ventas";
$Ventas         = 1;
$nombre_usuario = get_row('users', 'usuario_users', 'id_users', $user_id);

if (isset($_GET['id_factura'])) {
    $id_factura  = intval($_GET['id_factura']);
    $campos      = "clientes.id_cliente, clientes.nombre_cliente, clientes.fiscal_cliente, clientes.email_cliente, facturas_cot.id_vendedor, facturas_cot.fecha_factura, facturas_cot.condiciones, facturas_cot.validez, facturas_cot.numero_factura";
    $sql_factura = mysqli_query($conexion, "select $campos from facturas_cot, clientes where facturas_cot.id_cliente=clientes.id_cliente and id_factura='" . $id_factura . "'");
    $count       = mysqli_num_rows($sql_factura);
    if ($count == 1) {
        $rw_factura                 = mysqli_fetch_array($sql_factura);
        $id_cliente                 = $rw_factura['id_cliente'];
        $nombre_cliente             = $rw_factura['nombre_cliente'];
        $fiscal_cliente             = $rw_factura['fiscal_cliente'];
        $email_cliente              = $rw_factura['email_cliente'];
        $id_vendedor_db             = $rw_factura['id_vendedor'];
        $fecha_factura              = date("d/m/Y", strtotime($rw_factura['fecha_factura']));
        $condiciones                = $rw_factura['condiciones'];
        $validez                    = $rw_factura['validez'];
        $numero_factura             = $rw_factura['numero_factura'];
        $_SESSION['id_factura']     = $id_factura;
        $_SESSION['numero_factura'] = $numero_factura;
    } else {
        header("location: facturas.php");
        exit;
    }
} else {
    header("location: facturas.php");
    exit;
}
//consulta para elegir el comprobante
$query = $conexion->query("select * from comprobantes");
$tipo  = array();
while ($r = $query->fetch_object()) {$tipo[] = $r;}
?>

<?php require 'includes/header_start.php';?>

<?php require 'includes/header_end.php';?>

<!-- Begin page -->
<div id="wrapper" class="forced enlarged">

	<?php require 'includes/menu.php';?>

	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->
	<div class="content-page">
		<!-- Start content -->
		<div class="content">
			<div class="container">
				<?php if ($permisos_ver == 1) {
    ?>
					<div class="col-lg-12">
						<div class="portlet">
							<div class="portlet-heading bg-primary">
								<h3 class="portlet-title">
									Editar Cotización
								</h3>
								<div class="portlet-widgets">
								</div>
								<div class="clearfix"></div>
							</div>
							<div id="bg-primary" class="panel-collapse collapse show">
								<div class="portlet-body">
									<?php
include "../modal/buscar_productos_ventas.php";
    include "../modal/registro_cliente.php";
    include "../modal/registro_producto.php";
    include "../modal/caja.php";
    ?>
									<div class="row">
										<div class="col-lg-8">
											<div class="card-box">

												<div class="widget-chart">
													<div id="resultados_ajaxf" class='col-md-12' style="margin-top:10px"></div><!-- Carga los datos ajax -->
													<form class="form-horizontal" role="form" id="barcode_form">
														<div class="form-group row">
															<label for="barcode_qty" class="col-md-1 control-label">Cant:</label>
															<div class="col-md-2">
																<input style=" background-color:#A9DFBF; border-radius: 5px; border: 1px solid #39c; text-align: center;" type="text" class="form-control" id="barcode_qty" value="1" autocomplete="off" onClick="this.select()">
															</div>

															<label for="condiciones" class="control-label">Codigo:</label>
															<div class="col-md-5" align="left">
																<div class="input-group">
																	<input style=" background-color:#FADBD8; border-radius: 5px; border: 1px solid #39c;" type="text" class="form-control" id="barcode" autocomplete="off"  tabindex="1" autofocus="true" >
																	<span class="input-group-btn">
																		<button type="submit" class="btn btn-default"><span class="fa fa-barcode"></span></button>
																	</span>
																</div>
															</div>
															<div class="col-md-2">
																<button type="button" accesskey="a" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#buscar">
																	<span class="fa fa-search"></span> Buscar
																</button>
															</div>
														</div>
													</form>

													<div id="resultados" class='col-md-12' style="margin-top:10px"></div><!-- Carga los datos ajax -->

												</div>
											</div>

											<div class="card-box">

												<div class="widget-chart">
													<div id="resultados_ajaxf" class='col-md-12' style="margin-top:10px"></div><!-- Carga los datos ajax -->
													<form class="form-horizontal" role="form" id="barcode_form" name="frmrevisar2">
														<div class="form-group row">
															<input type="radio" name="rdrevision" value="SE" onclick="SE('')" checked>
																<label for="" class="col-md-4 control-label">En seguimiento:</label>
															<div class="col-md-5">
																<textarea name="txtobseg" class="form-control" id="" value="" autocomplete="off" onClick="" ROWS="2" COLS="86" maxlength="1200" placeholder="Observaciones de seguimiento"></textarea>
															</div>
																
															
															<div class="col-md-12">
																<div class="input-group">
																	<input type="radio" name="rdrevision" value="PV" onclick="PV('')">
																		<label for="" class="col-md-4 control-label">Venta realizada:</label>
																	<div class="input-group col-md-10">
																		<label for="" class="col-md-3 control-label">Documento asociado:</label>
																		<input type="text" name="txtdocumento" maxlength="20" size="20" disabled>
																	</div>
																</div>
																<div class="input-group">
																		<input type="radio" name="rdrevision" value="MO" onclick="MO('')">
																		<label for="" class="col-md-4 control-label">Cotización reemplazada por otra:</label>
																	<div class="input-group col-md-10">
																		<label for="" class="col-md-3 control-label">Nueva cotizacion CS:</label>
																		<input type="text" name="txtdocumento" maxlength="20" size="20" disabled>
																	</div>
																</div>
																<div class="input-group">
																		<input type="radio" name="rdrevision" value="MV" onclick="MV('')">
																		<label for="" class="col-md-4 control-label">No se realizó venta:</label>
																	<div class="input-group col-md-10">
																		<label for="" class="col-md-3 control-label">motivo de no venta:</label>
																			<select name='no_venta' id='no_venta' class="col-md-3 form-control"
																				onchange="load(1);" disabled>
																				<option value="" >-- Selecciona motivo --</option>
																				<?php

																					$query_categoria = mysqli_query($conexion, "select * from motivos order by nombre_motivo");
																					while ($rw = mysqli_fetch_array($query_categoria)) {
																						?>
																					<option value="<?php echo $rw['id_motivo']; ?>">
																					<?php echo $rw['nombre_motivo']; ?></option>
																					<?php
																					}
																						?>
																			</select>
																	</div>
															    </div>
														    </div>
														</div>
													</form>

													

												</div>
											</div>

										</div>

										<div class="col-lg-4">
											<div class="card-box">
												<div class="widget-chart">
												<div class="editar_factura" class='col-md-12' style="margin-top:10px"></div><!-- Carga los datos ajax -->
													<form role="form" id="datos_factura">
														<input id="id_vendedor" name="id_vendedor" type='hidden' value="<?php echo $id_vendedor_db; ?>">
														<div class="form-group row">
															<label class="col-2 col-form-label"></label>
															<div class="col-12">
																<div class="input-group">
																	<input style=" background-color:#D4E6F1; border-radius: 5px; border: 1px solid #39c;" type="text" id="nombre_cliente" class="form-control" required value="<?php echo $nombre_cliente; ?>" tabindex="2">
																	<span class="input-group-btn">
																		<button type="button" class="btn waves-effect waves-light btn-success" data-toggle="modal" data-target="#nuevoCliente"><li class="fa fa-plus"></li></button>
																	</span>
																	<input id="id_cliente" name="id_cliente" type='hidden' value="<?php echo $id_cliente; ?>">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label for="cotizacion">No. Cotización</label>
																	<input type="text" class="form-control" autocomplete="off" id="cotizacion"  name="cotizacion" value="<?php echo $numero_factura; ?>" readonly>
																</div>
															</div>
																<div class="col-md-6">
																<div class="form-group">
																	<label for="validez">Validez</label>
																	<select class='form-control' id="validez" name="validez">
																		<option value="1" <?php if ($validez == 1) {echo "selected";}?>>5 días</option>
																		<option value="2" <?php if ($validez == 2) {echo "selected";}?>>10 días</option>
																		<option value="3" <?php if ($validez == 3) {echo "selected";}?>>15 días</option>
																		<option value="4" <?php if ($validez == 4) {echo "selected";}?>>30 días</option>
																		<option value="5" <?php if ($validez == 5) {echo "selected";}?>>60 días</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label for="fiscal">NIT/Cedula</label>
																	<input type="text" class="form-control" autocomplete="off" id="rnc" name="rnc" disabled="true" value="<?php echo $fiscal_cliente; ?>">
																</div>
															</div>
															<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label for="condiciones">Pago</label>
																	<select class="form-control input-sm condiciones" id="condiciones" name="condiciones" onchange="showDiv(this)">
																		<option value="1">Contado</option>
																		<option value="4">Crédito</option>
																	</select>
																</div>
															</div>
															
															<div class="col-md-6">
																<div class="form-group">
																			<label for="validez">Estado</label>
																			<select class='form-control' name='sala' id='sala' required disabled="true">
																		<option value="4">Sin revisar</option>

																		<?php

																		$query_categoria = mysqli_query($conexion, "select * from estados_cot order by nombre_estado");
																		while ($rw = mysqli_fetch_array($query_categoria)) {
																		?>
																			<option value="<?php echo $rw['id_estado']; ?>"><?php echo $rw['nombre_estado']; ?></option>
																		<?php
																		}
																		?>
																	</select>
															    </div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label for="sala">Sala</label>
																	<select class='form-control' name='sala' id='sala' required>
																		<option value="">-- Selecciona --</option>

																		<?php

																		$query_categoria = mysqli_query($conexion, "select * from sucursales order by nombre_sucursal");
																		while ($rw = mysqli_fetch_array($query_categoria)) {
																		?>
																			<option value="<?php echo $rw['id_sucursal']; ?>"><?php echo $rw['nombre_sucursal']; ?></option>
																		<?php
																		}
																		?>
																	</select>

																	
																</div>
															</div>
														</div>
															<div class="col-md-6">
																<div class="form-group">
																	<div id="resultados3"></div><!-- Carga los datos ajax del incremento de la fatura -->
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-6">
																<button type="button" class="btn btn-danger waves-effect waves-light" aria-haspopup="true" aria-expanded="false" id="btn_actualizar"><span class="fa fa-refresh"></span> Actualizar</button>
															</div>
															<div class="col-md-6">
																<button type="button" class="btn btn-default waves-effect waves-light" id="btn_guardar"><span class="ti-shopping-cart-full"></span> Facturar</button>
															</div>
														</div>
													</form>

												</div>
											</div>

										</div>

									</div>
									<!-- end row -->


								</div>
							</div>
						</div>
					</div>
					<?php
} else {
    ?>
					<section class="content">
						<div class="alert alert-danger" align="center">
							<h3>Acceso denegado! </h3>
							<p>No cuentas con los permisos necesario para acceder a este módulo.</p>
						</div>
					</section>
					<?php
}
?>

			</div>
			<!-- end container -->
		</div>
		<!-- end content -->

		<?php require 'includes/pie.php';?>

	</div>
	<!-- ============================================================== -->
	<!-- End Right content here -->
	<!-- ============================================================== -->


</div>
<!-- END wrapper -->

<?php require 'includes/footer_start.php'
?>
<!-- ============================================================== -->
	<!-- Todo el codigo js aqui-->
	<!-- ============================================================== -->
	<script type="text/javascript" src="../../js/VentanaCentrada.js"></script>
	<script type="text/javascript" src="../../js/editar_cotizacion.js"></script>
	<!-- ============================================================== -->
	<!-- Codigos Para el Auto complete de Clientes -->
	<script>
		$(function() {
			$("#nombre_cliente").autocomplete({
				source: "../ajax/autocomplete/clientes.php",
				minLength: 2,
				select: function(event, ui) {
					event.preventDefault();
					$('#id_cliente').val(ui.item.id_cliente);
					$('#nombre_cliente').val(ui.item.nombre_cliente);
					$('#rnc').val(ui.item.fiscal_cliente);
					$.Notification.notify('custom','bottom right','EXITO!', 'CLIENTE AGREGADO CORRECTAMENTE')
				}
			});
		});

		$("#nombre_cliente" ).on( "keydown", function( event ) {
			if (event.keyCode== $.ui.keyCode.LEFT || event.keyCode== $.ui.keyCode.RIGHT || event.keyCode== $.ui.keyCode.UP || event.keyCode== $.ui.keyCode.DOWN || event.keyCode== $.ui.keyCode.DELETE || event.keyCode== $.ui.keyCode.BACKSPACE )
			{
				$("#id_cliente" ).val("");
				$("#rnc" ).val("");
			$("#resultados4").load("../ajax/tipo_doc.php");
			}
			if (event.keyCode==$.ui.keyCode.DELETE){
				$("#nombre_cliente" ).val("");
				$("#id_cliente" ).val("");
				$("#rnc" ).val("");
			}
		});
	</script>
	<!-- FIN -->
<script>
// print order function
function printOrder(id_factura) {
	$('#modal_vuelto').modal('hide');//CIERRA LA MODAL
	if (id_factura) {
		$.ajax({
			url: '../pdf/documentos/imprimir_venta.php',
			type: 'post',
			data: {
				id_factura: id_factura
			},
			dataType: 'text',
			success: function(response) {
				var mywindow = window.open('', 'Stock Management System', 'height=400,width=600');
				mywindow.document.write('<html><head><title>Facturación</title>');
				mywindow.document.write('</head><body>');
				mywindow.document.write(response);
				mywindow.document.write('</body></html>');
                mywindow.document.close(); // necessary for IE >= 10
                mywindow.focus(); // necessary for IE >= 10
                mywindow.print();
                mywindow.close();
            } // /success function

        }); // /ajax function to fetch the printable order
    } // /if orderId
} // /print order function
</script>
<script>
// print order function
function printFactura(id_factura) {
	$('#modal_vuelto').modal('hide');
	if (id_factura) {
		$.ajax({
			url: '../pdf/documentos/imprimir_factura_venta.php',
			type: 'post',
			data: {
				id_factura: id_factura
			},
			dataType: 'text',
			success: function(response) {
				var mywindow = window.open('', 'Stock Management System', 'height=400,width=600');
				mywindow.document.write('<html><head><title>Facturación</title>');
				mywindow.document.write('</head><body>');
				mywindow.document.write(response);
				mywindow.document.write('</body></html>');
                mywindow.document.close(); // necessary for IE >= 10
                mywindow.focus(); // necessary for IE >= 10
                mywindow.print();
                mywindow.close();
            } // /success function

        }); // /ajax function to fetch the printable order
    } // /if orderId
} // /print order function
</script>
<script>
function obtener_caja(user_id) {
		$(".outer_div3").load("../modal/carga_caja.php?user_id=" + user_id);//carga desde el ajax
	}
	function showDiv(select){
		if(select.value==4){
			$("#resultados3").load("../ajax/carga_prima.php");
		} else{
			$("#resultados3").load("../ajax/carga_resibido.php");
		}
	}
	function comprobar(select){
		var rnc = $("#rnc").val();
		if(select.value==1 && rnc==''){
			$.Notification.notify('warning','bottom center','NOTIFICACIÓN', 'AL CLIENTE SELECCIONADO NO SE LE PUEDE IMPRIR LA FACTURA, NO TIENE RNC/DEDULA REGISTRADO')
			$("#resultados4").load("../ajax/tipo_doc.php");
		} else{
			//$("#resultados3").load("../ajax/carga_resibido.php");
		}
	}
	function getval(sel)
  {
    $.Notification.notify('success', 'bottom center', 'NOTIFICACIÓN', 'CAMBIO DE COMPROBANTE')
    $("#outer_comprobante").load("../ajax/carga_correlativos.php?id_comp="+sel.value);

  }
	$(document).ready( function () {
        $(".UpperCase").on("keypress", function () {
         $input=$(this);
         setTimeout(function () {
          $input.val($input.val().toUpperCase());
         },50);
        })
       })


	   
</script>

<script language="javascript" type="text/javascript">
  var frmvalidator = new Validator("frmrevisar2");
  frmvalidator.addValidation("txtdocumento","alphanumeric");
  frmvalidator.addValidation("txtnueva","num");
  frmvalidator.setAddnlValidationFunction("GRABA");

  function GRABA()
   {
    frm=document.forms["frmrevisar2"];

    if(frm.rdrevision[0].checked == true)
     {
      if(eval(frm.txtobseg.value.length) == 0)
       {
        alert("LAS OBSERVACIONES DE SEGUIMIENTO SON REQUERIDAS");
        frm.txtobseg.focus();
        return false;
       }
     }
    else if(frm.rdrevision[1].checked == true)
     {
      if(eval(frm.txtdocumento.value.length) == 0)
       {
        alert("EL DOCUMENTO ASOCIADO A LA VENTA ES REQUERIDO");
        frm.txtdocumento.focus();
        return false;
       }
     }
    else if(frm.rdrevision[2].checked == true)
     {
      if(eval(frm.txtnueva.value.length) == 0)
       {
        alert("LA NUEVA COTIZACI\u00D3N ES REQUERIDA");
        frm.txtnueva.focus();
        return false;
       }
     }

    if (!(confirm("CONFIRME LA REVISI\u00D3N DE LA COTIZACI\u00D3N")))
      return false;
   }

  function SE()
   {
    frm=document.forms["frmrevisar2"];
    eval(frm.name+".txtobseg.disabled     = ''");
    eval(frm.name+".txtobs.disabled       = 'disabled'");
    eval(frm.name+".txtdocumento.disabled = 'disabled'");
    eval(frm.name+".txtnueva.disabled     = 'disabled'");
    eval(frm.name+".slmotivo.disabled     = 'disabled'");

    cadse = eval(frm.name+".txtobseg");
    cadse.value = "";
    cadse.style.backgroundColor = "#bce4ff";

    cadpv1 = eval(frm.name+".txtobs");
    cadpv1.value = "";
    cadpv1.style.backgroundColor = "";

    cadpv = eval(frm.name+".txtdocumento");
    cadpv.value = "";
    cadpv.style.backgroundColor = "";

    cadnv = eval(frm.name+".txtnueva");
    cadnv.value = "";
    cadnv.style.backgroundColor = "";

    cadmo = eval(frm.name+".slmotivo");
    cadmo.style.backgroundColor = "";
   }

  function PV()
   {
    frm=document.forms["frmrevisar2"];
    eval(frm.name+".txtobs.disabled       = ''");
    eval(frm.name+".txtdocumento.disabled = ''");
    eval(frm.name+".txtnueva.disabled     = 'disabled'");
    eval(frm.name+".slmotivo.disabled     = 'disabled'");
    eval(frm.name+".txtobseg.disabled     = 'disabled'");

    cadpv = eval(frm.name+".txtdocumento");
    cadpv.style.backgroundColor = "#bce4ff";

    cadpv1 = eval(frm.name+".txtobs");
    cadpv1.style.backgroundColor = "#bce4ff";

    cadse = eval(frm.name+".txtobseg");
    cadse.value = "";
    cadse.style.backgroundColor = "";

    cadnv = eval(frm.name+".txtnueva");
    cadnv.value = "";
    cadnv.style.backgroundColor = "";

    cadmo = eval(frm.name+".slmotivo");
    cadmo.style.backgroundColor = "";
   }

  function MO()
   {
    frm=document.forms["frmrevisar2"];
    eval(frm.name+".txtobs.disabled       = ''");
    eval(frm.name+".txtdocumento.disabled = 'disabled'");
    eval(frm.name+".txtnueva.disabled     = ''");
    eval(frm.name+".slmotivo.disabled     = 'disabled'");
    eval(frm.name+".txtobseg.disabled     = 'disabled'");

    cadpv = eval(frm.name+".txtdocumento");
    cadpv.value = "";
    cadpv.style.backgroundColor = "";

    cadpv1 = eval(frm.name+".txtobs");
    cadpv1.style.backgroundColor = "#bce4ff";

    cadnv = eval(frm.name+".txtnueva");
    cadnv.style.backgroundColor = "#bce4ff";

    cadse = eval(frm.name+".txtobseg");
    cadse.value = "";
    cadse.style.backgroundColor = "";

    cadmo = eval(frm.name+".slmotivo");
    cadmo.style.backgroundColor = "";
   }

  function NV()
   {
    frm=document.forms["frmrevisar2"];
    eval(frm.name+".txtobs.disabled       = ''");
    eval(frm.name+".txtdocumento.disabled = 'disabled'");
    eval(frm.name+".txtnueva.disabled     = 'disabled'");
    eval(frm.name+".txtobseg.disabled     = 'disabled'");
    eval(frm.name+".slmotivo.disabled     = ''");

    cadpv = eval(frm.name+".txtdocumento");
    cadpv.style.backgroundColor = "";

    cadpv1 = eval(frm.name+".txtobs");
    cadpv1.style.backgroundColor = "#bce4ff";

    cadnv = eval(frm.name+".txtnueva");
    cadnv.style.backgroundColor = "";

    cadmo = eval(frm.name+".slmotivo");
    cadmo.style.backgroundColor = "#bce4ff";

    cadse = eval(frm.name+".txtobseg");
    cadse.value = "";
    cadse.style.backgroundColor = "";
   }

  

function revisar3()
 {
  global $HTTP_POST_VARS, $_SESSION, $bd;

  $usuario    = $_SESSION["loginUsuario"];
  $cotizacion = $HTTP_POST_VARS["cotizacion"];
  $revision   = $HTTP_POST_VARS["rdrevision"];
  $documento  = $HTTP_POST_VARS["txtdocumento"];
  $nueva      = $HTTP_POST_VARS["txtnueva"];
  $motivo     = $HTTP_POST_VARS["slmotivo"];
  $obs        = $HTTP_POST_VARS["txtobs"];
  $obseg      = trim(strtoupper($HTTP_POST_VARS["txtobseg"]));

  if($revision == 'SE')
   {
    $nueva  = 0;
    $motivo = 0;
    $documento = "";
   }
  else if($revision == 'PV')
   {
    $nueva  = 0;
    $motivo = 0;
   }
  else if($revision == 'MO')
   {
    $documento = "";
    $motivo = 0;
   }
  else if($revision == 'NV')
   {
    $nueva  = 0;
    $documento = "";
   }

  $sql = "UPDATE cotizaciones SET estado = '$revision', documento = '$documento', "
        ."motivo_noventa = '$motivo', nv_cotizacion = '$nueva', "
        ."revisado_por = '$usuario', fecha_revisa = NOW(), obs_revisa = '$obs' "
        ."WHERE id_cotizacion = '$cotizacion';";
  $bd->consulta($sql);

  if($revision == 'SE')
   {
    $sql = "SELECT MAX(evento) AS id FROM cotizaciones_seguimiento WHERE cotizacion = '$cotizacion';";
    $bd->consulta($sql);
    $idev = mysql_result($bd->Consulta_ID,0,'id') + 1;

    $sql = "INSERT INTO cotizaciones_seguimiento VALUES ('$cotizacion', $idev, '$obseg', '$usuario', NOW( ));";
    $bd->consulta($sql);
   }

  if($bd->Consulta_ID)
   {
    echo "<script language=\"javascript\" type=\"text/javascript\">";
    echo "alert('COTIZACI\u00D3N REVISADA!');";
    echo "setTimeout(\"document.location.href='modulos.php?name=cotizaciones&op=revisar'\", 0)";
    echo "</script>";
   }

  break;
 }


function reconstruccion()
 {
  global $bd, $bdaux, $_SESSION, $HTTP_POST_VARS;

  if(!($_SESSION["admmaster"] == "S"))
   {
    echo "<script language=\"javascript\" type=\"text/javascript\">";
    echo "alert('NO TIENE PERMISOS PARA INGRESAR, ACCESO DENEGADO');";
    echo "setTimeout(\"document.location.href='modulos.php?name=menu'\", 0)";
    echo "</script>";
    break;
    die();
   }

  ?>
  

  <script language="javascript" type="text/javascript">
  var frmvalidator = new Validator("frmreconstruccion");
  frmvalidator.addValidation("num_cotizacion","req","Por favor escriba el numero");
  frmvalidator.addValidation("num_cotizacion","num");
  frmvalidator.setAddnlValidationFunction("GRABA");

  <?php require 'includes/footer_end.php'
  
?>

  


//Calcula el d�gito de verificaci�n
//Funci�n descargada de la web
function caldv($nit)
 {
  if (! is_numeric($nit))
    return false;

  $arr = array(1 => 3, 4 => 17, 7 => 29, 10 => 43, 13 => 59, 2 => 7, 5 => 19, 8 => 37, 11 => 47, 14 => 67, 3 => 13, 6 => 23, 9 => 41, 12 => 53, 15 => 71);
  $x = 0;
  $y = 0;
  $z = strlen($nit);
  $dv = '';

  for ($i=0; $i<$z; $i++)
   {
    $y = substr($nit, $i, 1);
    $x += ($y*$arr[$z-$i]);
   }

  $y = $x%11;

  if ($y > 1)
   {
    $dv = 11-$y;
    return $dv;
   }
  else
   {
    $dv = $y;
    return $dv;
   }
 }


switch ($op)
 {
  case "usuarios":
                  usuarios();
                  break;

  case "usuarios1":
                   usuarios1();
                   break;

  case "borrausuario":
                      borrausuario();
                      break;

  case "parametrizacion":
                         parametrizacion();
                         break;

  case "parametrizacion1":
                          parametrizacion1();
                          break;

  case "asesores":
                  asesores();
                  break;

  case "asesores1":
                   asesores1();
                   break;

  case "editaasesor":
                     editaasesor();
                     break;

  case "editaasesor1":
                      editaasesor1();
                      break;

  case "borraasesor":
                     borraasesor();
                     break;

  case "clientes":
                  clientes();
                  break;

  case "clientes1":
                   clientes1();
                   break;

  case "clientes2":
                   clientes2();
                   break;

  case "cotizar":
                 cotizar();
                 break;

  case "cotizar1":
                  cotizar1();
                  break;

  case "cotizar2":
                  cotizar2();
                  break;

  case "cotizar3":
                  cotizar3();
                  break;

  case "cotizar4":
                  cotizar4();
                  break;

  case "buscaitem":
                   buscaitem();
                   break;

  case "buscaitem1":
                    buscaitem1();
                    break;

  case "detcotizacion":
                       detcotizacion();
                       break;

  case "consultas":
                   consultas();
                   break;

  case "conclientes":
                     conclientes();
                     break;

  case "conclientes1":
                      conclientes1();
                      break;

  case "fletes":
                fletes();
                break;

  case "fletes1":
                 fletes1();
                 break;

  case "confletes":
                   confletes();
                   break;

  case "concotizaciones":
                         concotizaciones();
                         break;

  case "concotizaciones1":
                          concotizaciones1();
                          break;

  case "concotizaciones2":
                          concotizaciones2();
                          break;

  case "motivos":
                 motivos();
                 break;

  case "motivos1":
                  motivos1();
                  break;

  case "motivos2":
                  motivos2();
                  break;

  case "motivos3":
                  motivos3();
                  break;

  case "revisar":
                 revisar();
                 break;

  case "revisar1":
                  revisar1();
                  break;

  case "revisar2":
                  revisar2();
                  break;

  case "revisar3":
                  revisar3();
                  break;

  case "enpantalla":
                    enpantalla();
                    break;

  case "reconstruccion":
                        reconstruccion();
                        break;

  default:
          menu();
          break;
 
  }

  

  