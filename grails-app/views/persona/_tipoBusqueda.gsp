${opcion}


<g:if test="${opcion.equals('1')}">
    Fecha Inicio: <input type="text" name="fechaInicio" id="fechaInicio">
    Fecha Fin: <input type="text" name="fechaFinal" id="fechaFinal" >
    </br>
    <button type="button" onclick="buscarRangoFechas(document.getElementById('fechaInicio').value, document.getElementById('fechaFinal').value)">Buscar</button>

</g:if>
<g:elseif test="${opcion.equals('2')}">
    Nombre: <input type="text" name="buscarnombre" id="buscarnombre">
    </br>
    <button type="button" onclick="buscarPorNombre(document.getElementById('buscarnombre').value)">Buscar</button>


</g:elseif>
<g:elseif test="${opcion.equals('3')}">
    Apellido Paterno: <input type="text" name="buscarApellidoPaterno" id="buscarapellidoPaterno">
    </br>
    <button type="button" onclick="buscarPorApellidoPaterno(document.getElementById('buscarapellidoPaterno').value)">Buscar</button>
</g:elseif>
<g:elseif test="${opcion.equals('4')}">
    Apellido Materno: <input type="text" name="buscarApellidoMaterno" id="buscarapellidoMaterno">
    </br>
    <button type="button" onclick="buscarPorApellidoMaterno(document.getElementById('buscarapellidoMaterno').value)">Buscar</button>
</g:elseif>
