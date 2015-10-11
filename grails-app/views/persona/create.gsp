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

<g:form controller="persona" action="guardar">
    <table>
        <tr>
            <td>
                <label> Nombre: </label>
            </td>
            <td>
                <g:textField name="nombre" id="nombre"></g:textField>
            </td>
        </tr>
        <tr>
            <td>
                <label> Apellido Paterno: </label>
            </td>
            <td>
                <g:textField name="apellidoPaterno" id="apellidoPaterno"></g:textField>
            </td>
        </tr>
        <tr>
            <td>
                <label> Apellido Materno: </label>
            </td>
            <td>
                <g:textField name="apellidoMaterno" id="apellidoMaterno"></g:textField>
            </td>
        </tr>
        <tr>
            <td>
                <label> Fecha de Nacimiento: </label>
            </td>
            <td>
                <g:datePicker name="fechaNacimiento" id="fechaNacimiento" years="${1970..2000}"></g:datePicker>
            </td>
        </tr>
        <tr>
            <td>
                <label> Sexo </label>
            </td>
            <td>
                <g:select name="sexo.option" from="${['Femenino', 'MAsculino', 'Transgenero']}"
                          valueMessagePrefix="sexo.option"  />
            </td>
        </tr>
        <tr>
            <td>
                <label> Direccion: </label>
            </td>
            <td>
                <g:textField name="direccion" id="direccion"></g:textField>
            </td>
        </tr>
        <tr>
            <td>
                <label> Localidad: </label>
            </td>
            <td>
                <g:textField name="localidad" id="localidad"></g:textField>
            </td>
        </tr>
        <tr>
            <td>
                <label> Pais: </label>
            </td>
            <td>
                <g:textField name="pais" id="pais"></g:textField>
            </td>
        </tr>
        <tr>
            <td>
                <label> Telefono: </label>
            </td>
            <td>
                <g:textField name="telefono" id="telefono"></g:textField>
            </td>
        </tr>

    </table>



    <br>

    <button type="submit">Guardar Persona</button>
</g:form>
</div>
</body>
</html>