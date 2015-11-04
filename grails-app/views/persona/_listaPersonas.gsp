<g:link  action="create"  controller="persona" >
    <button>
        Nueva Persona
    </button>

</g:link>
%{--<g:busquedaPersona idApellido="idApellido" nombre="nombre" nombretxt="nombret">--}%%{--

</g:busquedaPersona>--}%
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
                <g:link controller="persona" action="detalle" id='${persona.id}'>
                    Detalle
                </g:link>

                <g:link controller="persona" action="">Editar</g:link>
                <g:link constroller="persona" action="">Eliminar</g:link>
            </td>

        </tr>

    </g:each>

    </tbody>

</table>