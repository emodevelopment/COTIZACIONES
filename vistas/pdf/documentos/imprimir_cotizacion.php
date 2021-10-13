<?php
include '../../ajax/is_logged.php'; //Archivo verifica que el usario que intenta acceder a la URL esta logueado
?>
<style type="text/css">
    <!--
    .midnight-blue{
        background:#2c3a50;
        padding: 4px 4px 4px;
        color:white;
        font-weight:bold;
        font-size:12px;
    }
    table.pos_fixed1 { position:absolute; top:95px; left:500px; }/*COTIZACION*/
    table.pos_fixed2 { position:absolute; top:120px; left:30px; }/*CLIENTES*/
    table.pos_fixed3 { position:absolute; top:400px; left:8px; }/*PAGO CUADRO*/
    table.pos_fixed4 { position:absolute; top:390px; left:30px; }/*DETALLE DE PAGO LABEL*/
    table.pos_fixed5 { position:absolute; top:440px; left:475px; }/*CUENTA BANCARIA LABEL*/
    -->
</style>
<?php
/* Connect To Database*/
require_once "../../db.php"; //Contiene las variables de configuracion para conectar a la base de datos
require_once "../../php_conexion.php"; //Contiene funcion que conecta a la base de datos
//Archivo de funciones PHP
include "../../funciones.php";
$users          = intval($_SESSION['id_users']);
$numero_factura = $_POST['id_factura'];
$simbolo_moneda = get_row('perfil', 'moneda', 'id_perfil', 1);
$sql_factura    = mysqli_query($conexion, "select * from facturas_cot, clientes where facturas_cot.id_cliente=clientes.id_cliente and numero_factura='" . $numero_factura . "'");
$count          = mysqli_num_rows($sql_factura);
if ($count == 1) {
    $rw_factura        = mysqli_fetch_array($sql_factura);
    $id_cliente        = $rw_factura['id_cliente'];
    $nombre_cliente    = $rw_factura['nombre_cliente'];
    $direccion_cliente = $rw_factura['direccion_cliente'];
    $telefono_cliente  = $rw_factura['telefono_cliente'];
    $email_cliente     = $rw_factura['email_cliente'];
    $fiscal_cliente    = $rw_factura['fiscal_cliente'];
    $id_vendedor_db    = $rw_factura['id_vendedor'];
    $fecha_factura     = date("d/m/Y", strtotime($rw_factura['fecha_factura']));
    $condiciones       = $rw_factura['condiciones'];
    $estado_factura    = $rw_factura['estado_factura'];
    $numero_factura    = $rw_factura['numero_factura'];
    $logo              = get_row('perfil', 'logo_url', 'id_perfil', 1);
} else {
    header("location: new_venta.php");
    exit;
}
?>

<page pageset='new' backtop='10mm' backbottom='10mm' backleft='20mm' backright='20mm' style="font-size: 8pt; font-family: arial" footer='page'>
    <?php include "encabezado_factura.php";?>
    <div style='border-bottom: 3px solid #0505A6;padding-bottom:4px; background-color:rgba(93, 173, 226 );'></div><br>
    <table summary="" width="15%" class="pos_fixed2">
        <tr style="background-color: #FFFFFF; font-size: 9pt;font-weight:bold; text-align: center;">
            <td>Clientes</td>
        </tr>
    </table>
    <table summary="" width="15%" class="pos_fixed1">
        <tr style="background-color: #FFFFFF; font-size: 18pt;font-weight:bold; text-align: center;">
            <td><em>COTIZACION</em></td>
        </tr>
    </table>
    <table style="float: left;width: 56%; text-align: left; font-size: 8pt; border: 2px solid #0505A6;-moz-border-radius: 13px;-webkit-border-radius: 12px;padding: 10px;">

        <tr>
            <th style="width:10%;" >Nombre</th>
            <td colspan="5" style="width:30%;border-bottom: thin solid;" ><?php echo $nombre_cliente; ?></td>
        </tr>
        <tr>
            <th style="width:10%;" >Direcci贸n</th>
            <td colspan="5" style="width:30%;border-bottom: thin solid;" ><?php echo $direccion_cliente; ?></td>
        </tr>
        <tr>
            <th style="width:5%;" >Ciudad</th>
            <td style="width:20%;border-bottom: thin solid;" ></td>
            <th style="width:5%;" >Provincia</th>
            <td style="width:15%;border-bottom: thin solid;" ></td>
            <th style="width:5%;" >Tel.</th>
            <td style="width:10%;border-bottom: thin solid;" ><?php echo $telefono_cliente; ?></td>

        </tr>
        <tr>
            <th style="width:10%;" >RUC:</th>
            <td colspan="5" style="width:10%;border-bottom: thin solid;" ><?php echo $fiscal_cliente; ?></td>
        </tr>
        <tr>

        </tr>
    </table>
    <table style="float: left; width: 2%;">
        <tbody>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </tbody>
    </table>

    <table style="float: right; width: 40%; text-align: left; font-size: 8pt; border: 2px solid #0505A6;-moz-border-radius: 13px;-webkit-border-radius: 12px;padding: 10px;">
        <?php
$sql_user = mysqli_query($conexion, "select * from users where id_users='$id_vendedor_db'");
$rw_user  = mysqli_fetch_array($sql_user);
$vendedor = $rw_user['nombre_users'] . " " . $rw_user['apellido_users'];
?>
        <tr>
            <th style="width:20%;" >Fecha</th>
            <td style="width:50%;border-bottom: thin solid;" ><?php echo date("d/m/Y", strtotime($fecha_factura)); ?></td>
        </tr>
        <tr>
            <th style="width:20%;" >No. Pedido</th>
            <td style="width:50%;border-bottom: thin solid;" > <?php echo $numero_factura; ?> </td>
        </tr>
        <tr>
            <th style="width:20%;" >Representante</th>
            <td style="width:50%;border-bottom: thin solid;" > P. Alonso </td>
        </tr>
        <tr>
            <th style="width:20%;" >Atenci贸n</th>
            <td style="width:50%;border-bottom: thin solid;" ><?php echo $vendedor; ?></td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tbody>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </tbody>
    </table>
    <table cellspacing="0" style="width: 100%; text-align: left;border: 1px solid #0A122A; font-size: 8pt;">
        <tr>
            <th style="width: 10%;text-align:center;  border-bottom: thin solid;">Cantidad</th>
            <th style="width: 60%; text-align: center; border-left: thin solid; border-bottom: thin solid;">Descripci贸n</th>
            <th style="width: 15%;text-align: center; border-left: thin solid; border-bottom: thin solid;">Precio unitario</th>
            <th style="width: 20%;text-align: center; border-left: thin solid;  border-bottom: thin solid;">TOTAL</th>
        </tr>
        <?php
$nums          = 1;
$impuesto      = get_row('perfil', 'impuesto', 'id_perfil', 1);
$sumador_total = 0;
$sum_total     = 0;
$t_iva         = 0;
$sql           = mysqli_query($conexion, "select * from productos, detalle_fact_cot, facturas_cot where productos.id_producto=detalle_fact_cot.id_producto and detalle_fact_cot.numero_factura=facturas_cot.numero_factura and facturas_cot.numero_factura='" . $numero_factura . "'");

while ($row = mysqli_fetch_array($sql)) {
    $id_producto     = $row["id_producto"];
    $codigo_producto = $row['codigo_producto'];
    $cantidad        = $row['cantidad'];
    $desc_tmp        = $row['desc_venta'];
    $nombre_producto = $row['nombre_producto'];
    $print_img       = $row['print_img'];
    $image_path      = $row['image_path'];
    $caduca          = $row['validez'];
// control del impuesto por productos.
    if ($row['iva_producto'] == 0) {
        $p_venta   = $row['precio_venta'];
        $p_venta_f = number_format($p_venta, 2); //Formateo variables
        $p_venta_r = str_replace(",", "", $p_venta_f); //Reemplazo las comas
        $p_total   = $p_venta_r * $cantidad;
        $f_items   = rebajas($p_total, $desc_tmp); //Aplicando el descuento
        /*--------------------------------------------------------------------------------*/
        $p_total_f = number_format($f_items, 2); //Precio total formateado
        $p_total_r = str_replace(",", "", $p_total_f); //Reemplazo las comas

        $sum_total += $p_total_r; //Sumador
        $t_iva = ($sum_total * $impuesto) / 100;
        $t_iva = number_format($t_iva, 2, '.', '');
    }
    //end impuesto
    $precio_venta   = $row['precio_venta'];
    $precio_venta_f = number_format($precio_venta, 2); //Formateo variables
    $precio_venta_r = str_replace(",", "", $precio_venta_f); //Reemplazo las comas
    $precio_total   = $precio_venta_r * $cantidad;
    $final_items    = rebajas($precio_total, $desc_tmp); //Aplicando el descuento
    /*--------------------------------------------------------------------------------*/
    $precio_total_f = number_format($final_items, 2); //Precio total formateado
    $precio_total_r = str_replace(",", "", $precio_total_f); //Reemplazo las comas
    $sumador_total += $precio_total_r; //Sumador
    if ($nums % 2 == 0) {
        $clase = "clouds";
    } else {
        $clase = "silver";
    }

    ?>
    <tr>
        <td class='<?php echo $clase; ?>' style="width: 10%; text-align: center;"><?php echo $cantidad; ?></td>
        <td class='<?php echo $clase; ?>' style="width: 60%; text-align: left; border-left: thin solid;"><?php echo $nombre_producto; ?></td>
        <td class='<?php echo $clase; ?>' style="width: 15%; text-align: right; border-left:thin solid;"><?php echo $precio_venta_f . ' ' . $simbolo_moneda; ?></td>
        <td class='<?php echo $clase; ?>' style="width: 15%; text-align: right; border-left:thin solid; background-color: #9FF9F1;"><?php echo $precio_total_f . ' ' . $simbolo_moneda; ?></td>
    </tr>
    <?php

    $nums++;
}
$impuesto      = get_row('perfil', 'impuesto', 'id_perfil', 1);
$subtotal      = number_format($sumador_total, 2, '.', '');
$total_iva     = ($subtotal * $impuesto) / 100;
$total_iva     = number_format($total_iva, 2, '.', '') - number_format($t_iva, 2, '.', '');
$total_factura = $subtotal + $total_iva;
?>

<tr>
    <td style=" height: 75px;">&nbsp; </td>
    <td style=" border-left: thin solid">&nbsp; </td>
    <td style=" border-left:thin solid; ">&nbsp;</td>
    <td style=" border-left: thin solid; background-color: #9FF9F1;">&nbsp;</td>
</tr>
</table>
<table cellspacing="0" style="float: left; width: 100%; font-size: 8pt">
    <tr>
     <td colspan="3" style="text-align: right;">Subtotal: </td>

     <td style="width: 15%;border-left: thin solid; border-bottom: thin solid; text-align: right;background-color: #9FF9F1; border-right: thin solid;"> <?php echo number_format($subtotal, 2) . ' ' . $simbolo_moneda; ?>
 </td>
</tr>
<tr>
    <td style="">&nbsp;</td>
    <td style="width: 15%; text-align: right;">ITBMS </td>
    <td style="width: 15%; border-left: thin solid; border-top: thin solid; text-align: right;background-color: #9FF9F1;"><?php echo $impuesto; ?>%
    </td>
    <td style="border-left: thin solid; border-bottom: thin solid; text-align: right;background-color: #9FF9F1; border-right: thin solid;"> <?php echo number_format($total_iva, 2) . ' ' . $simbolo_moneda; ?></td>
</tr>
<tr>
    <td style="">&nbsp;</td>
    <td style="">&nbsp;</td>
    <td style="border-left: thin solid; border-top: thin solid; border-bottom: thin solid; text-align: right;background-color: #9FF9F1;">MANO DE OBRA</td>
    <td style="border-left: thin solid; border-bottom: thin solid; text-align: right;background-color: #9FF9F1; border-right: thin solid;"></td>
</tr>
<tr>
    <th colspan="3" style="text-align: right;">TOTAL</th>

    <th style="border-left: thin solid; border-bottom: thin solid; text-align: right;background-color: #9FF9F1; border-right: thin solid;"> <?php echo number_format($total_factura, 2) . ' ' . $simbolo_moneda; ?></th>
</tr>
<tr>
    <td colspan="4" style="height: 20px">&nbsp;</td>
</table>
<table style="float: left;width: 47%; text-align: left; font-size: 8pt; border: 2px solid #0505A6;-moz-border-radius: 13px;-webkit-border-radius: 12px;padding: 12px; background-color: #FFFFFF;" class="pos_fixed3">

    <tr>
        <th style="width:5%; text-align: right;" ><input type="radio" id="option1" /></th>
        <th style="width:40%;" >Efectivo</th>
    </tr>
    <tr>
        <th style="width:5%; text-align: right;" ><input type="radio" id="option1" /></th>
        <th style="width:40%;" >Con cheque</th>
    </tr>
    <tr>
        <th style="width:5%; text-align: right;" ><input type="radio" id="option1" /></th>
        <th style="width:40%;" >ACH / Deposito</th>
    </tr>
    <tr>
        <th style="width:5%;" >Nombre:</th>
        <td colspan="2" style="width:40%;border-bottom: thin solid;" ></td>
    </tr>
    <tr>
        <th style="width:5%;" >Numero:</th>
        <td colspan="2" style="width:40%;border-bottom: thin solid;" >  </td>
    </tr>
    <tr>
        <th style="width:3%;" ></th>
        <th style="text-align: right;" >Caduca:</th>
        <td style="width:40%;border-bottom: thin solid;" >  </td>
    </tr>
</table>
<table summary="" width="15%" class="pos_fixed4">
    <tr style="background-color: #FFFFFF; font-size: 10pt;font-weight:bold;">
        <td>Detalle de Pago</td>
    </tr>
</table>
<table style="float: left; width: 3%;">
    <tbody>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </tbody>
</table>

<table style="float: right; width: 40%; text-align: left; font-size: 10pt; border: 2px solid #0505A6;-moz-border-radius: 13px;-webkit-border-radius: 12px;padding: 10px;">
    <tr>
        <th style="width:20%;" >Cuenta No.</th>
        <td style="width:50%;border-bottom: thin solid;" >4585222141 </td>
    </tr>
    <tr>
        <th style="width:20%;" >Tipo.</th>
        <td style="width:50%;border-bottom: thin solid;" >Cuenta Ahorro</td>
    </tr>
    <tr>
        <th style="width:20%;" >Nombre.</th>
        <td style="width:50%;border-bottom: thin solid;" >Edwin Macz</td>
    </tr>
</table>
<table summary="" width="20%" class="pos_fixed5">
    <tr style="background-color: #FFFFFF; font-size: 10pt;font-weight:bold;">
        <td>Cuenta Bancaria</td>
    </tr>
</table>
<table style="width: 100%;">
    <tbody>
        <tr>
            <td style="height: 70px;">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </tbody>
</table>
<div style="font-size:10pt;text-align:center;font-weight:bold; color: #0505A6">Webs Macz</div><br>
<div style='border-bottom: 3px solid #0505A6;padding-bottom:4px; background-color:rgba(93, 173, 226 );'></div><br>
<div style="font-size:10pt;text-align:center;font-weight:bold; color: #0505A6">www.websmacz.com</div>

</page>
