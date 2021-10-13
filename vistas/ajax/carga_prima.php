		<label for="prima">Anticipo</label>
		<input style=" background-color:#F5B7B1; border-radius: 5px; border: 1px solid #39c; text-align: center; font-size: 30px; height: 50px" type="text" class="form-control resibido" onkeyup="this.value=Numeros2(this.value)" title="Ingresa sólo números con 0 ó 2 decimales" autocomplete="off" id="resibido" name="resibido" tabindex="3" placeholder="$ 0.00">
		<script type="text/javascript">
  	function Numeros2(string){//Solo numeros
    var out = '';
    var filtro = '1234567890';//Caracteres validos

    //Recorrer el texto y verificar si el caracter se encuentra en la lista de validos
    for (var i=0; i<string.length; i++)
       if (filtro.indexOf(string.charAt(i)) != -1)
             //Se añaden a la salida los caracteres validos
	     out += string.charAt(i);

    //Retornar valor filtrado
    return out;
}
  </script>
