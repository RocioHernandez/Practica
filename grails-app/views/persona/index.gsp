<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 06/10/2015
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Persona</title>
    <g:if env="development"><link rel="stylesheet" href="${resource(dir: 'css', file: 'Estilos.css')}" type="text/css"></g:if>
</head>



<body>

<div id="contenedor">
    <g:link  action="create"  controller="persona" >
        <button>
            Nueva Persona
        </button>

    </g:link>
<table class="table">
<thead>
<tr>
    <td> ID </td>
    <td> Nombre</td>
    <td> Apellido Paterno</td>
    <td> Apellido Materno</td>
    <td> Edad</td>
    <td> Acciones</td>

</tr>

</thead >
<tbody>
<g:each in="${personas}" var="persona" >
    <tr>

            <td class="text-center" onclick='document.location = "<g:createLink controller="persona" action="detalle2" id='${persona.id}'/> "'>
                ${persona.id}
            </td>


        <td> ${persona.nombre}</td>
        <td> ${persona.apellidoPaterno}</td>
        <td> ${persona.apellidoMaterno}</td>
        <td> ${persona.edad}</td>
        <td>
           %{-- <g:link controller="persona" action="detalle" id='${persona.id}'>
                Detalle
            </g:link>

            <g:link controller="persona" action="">Editar</g:link>
            <g:link constroller="persona" action="">Eliminar</g:link>--}%
        </td>

    </tr>

</g:each>

</tbody>

</table>
</div>
</body>
</html>