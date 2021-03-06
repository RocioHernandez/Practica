</html>

<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 06/10/2015
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Crear Nueva Persona</title>
    <style type="text/css">
    body{
        background: #F8F9F5;
        margin: 0px;
        padding: 0px;
        color: #333333;
        font-family: "Consolas", monospace;

    }

    #contenedor{
        width: 600px;
        margin: 0 auto;
        position: relative;


    }

    </style>
</head>

<body>
<div id="contenedor">

    <g:form controller="persona" action="detalle">

        <table>
            <tr>
                <td>
                    <label> Nombre: </label>
                </td>
                <td>
                    <g:textField name="nombre" id="nombre" value="${persona?.nombre}" disabled="disabled"></g:textField>
                </td>
            </tr>
            <tr>
                <td>
                    <label> Apellido Paterno: </label>
                </td>
                <td>
                    <g:textField name="apellidoPaterno" id="apellidoPaterno" value="${persona?.apellidoPaterno}" disabled="disabled"></g:textField>
                </td>
            </tr>
            <tr>
                <td>
                    <label> Apellido Materno: </label>
                </td>
                <td>
                    <g:textField name="apellidoMaterno" id="apellidoMaterno" value="${persona?.apellidoMaterno}" disabled="disabled"></g:textField>
                </td>
            </tr>
            <tr>
                <td>
                    <label> Edad: </label>
                </td>
                <td>
                    <g:textField name="edad" id="edad" value="${persona?.edad}" disabled="disabled"></g:textField>
                </td>
            </tr>
            <tr>
                <td>
                    <label> Sexo </label>
                </td>
                <td>
                    <g:select name="sexo.option" from="${['Femenino', 'Masculino', 'Transgenero']}"
                              valueMessagePrefix="sexo.option" value="${persona?.sexo}" />
                </td>
            </tr>
            <tr>
                <td>
                    <label> Direccion: </label>
                </td>
                <td>
                    <g:textField name="direccion" id="direccion" value="${persona?.direccion}" disabled="disabled"></g:textField>
                </td>
            </tr>
            <tr>
                <td>
                    <label> Localidad: </label>
                </td>
                <td>
                    <g:textField name="localidad" id="localidad" value="${persona?.localidad}" disabled="disabled"> </g:textField>
                </td>
            </tr>
            <tr>
                <td>
                    <label> Pais: </label>
                </td>
                <td>
                    <g:textField name="pais" id="pais" value="${persona?.pais}" disabled="disabled"></g:textField>
                </td>
            </tr>
            <tr>
                <td>
                    <label> Telefono: </label>
                </td>
                <td>
                    <g:textField name="telefono" id="telefono" value="${persona?.telefono}" disabled="disabled"></g:textField>
                </td>
            </tr>

        </table>



        <br>
    </g:form>

    <g:link controller="persona" action="index">
        <button>Regresar</button>
    </g:link>
</div>
</body>
</html>