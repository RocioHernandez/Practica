<html>
    <head>
        <title>Persona</title>
        <g:javascript library="jquery"/>
        <r:layoutResources/>
        <script>


        </script>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">

        <g:javascript>
            function filtradoFecha(fecha) {
            ${remoteFunction(controller: 'persona',
                    action: 'buscarFEcha',
                    update: 'todoContenido',
                    params: "'fecha='+fecha")};
            }

            function cambiarfiltro(opcion) {
            ${remoteFunction(controller: 'persona',
                    action: 'cambiarFiltro',
                    update: 'tipoBusqueda',
                    params: "'opcion='+opcion")};
            }

            function buscarRangoFechas(fechaIni, fechaFin) {
            ${remoteFunction(controller: 'persona',
                    action: 'buscarPorRangoFecha',
                    update: 'todoContenido',
                    params: "'fechaIni='+fechaIni + '&fechaFin='+fechaFin")};
            }

            function buscarPorNombre(nombre) {
            ${remoteFunction(controller: 'persona',
                    action: 'buscarPorNombre',
                    update: 'todoContenido',
                    params: "'nombre='+nombre")};
            }

            function buscarPorApellidoPaterno(apellidoPaterno) {
            ${remoteFunction(controller: 'persona',
                    action: 'buscarPorApellidoPaterno',
                    update: 'todoContenido',
                    params: "'apellidoPaterno='+apellidoPaterno")};
            }
            function buscarPorApellidoMaterno(apellidoMaterno) {
            ${remoteFunction(controller: 'persona',
                    action: 'buscarPorApellidoMaterno',
                    update: 'todoContenido',
                    params: "'apellidoMaterno='+apellidoMaterno")};
            }



        </g:javascript>

    </head>
    <body>

    <div id="todoContenido">
        <div id="opciondebusqueda">
            Buscar por:
            <g:select name="opciones" from="${['Rango de fecha', 'Nombre', 'ApellidoPaterno','Apellido Materno']}"
                      keys="[1,2,3,4]"
                      noSelection="['': 'Seleccionar...']"
                      id="opciones"
                      value="${params.opciones}"
                      onchange="cambiarfiltro(this.value)"
            />
        </div>
        <div id="tipoBusqueda">
            <g:render template="tipoBusqueda"></g:render>
        </div>
        %{--<div id="buscarporFecha">
            <label>Fecha: </label>
            <input type="text" name="fechabucar" id="fechabucar">
            <button type="button" id="buscar" name="buscar" onclick="filtradoFecha(document.getElementById('fechabucar').value)";>
        Buscar por fecha
        </button>
        </div>--}%
%{--        <g:link  action="create"  controller="persona" >
            <button>
                Nueva Persona
            </button>

        </g:link>--}%
        <div id="contenedor">
            <div name="listaPersonas" id="listaPersonas">
                <g:render template="listaPersonas" model="[personas:personas]"></g:render>
                <br>
                %{--${totalPerrsonas}--}%
            </div>
            <util:remotePaginate total="${totalPerrsonas?:0}" params="${params}" controller="persona" action="index" update="listaPersonas"></util:remotePaginate>

    </div>
    </div>

    <r:layoutResources/>
    </body>

</html>