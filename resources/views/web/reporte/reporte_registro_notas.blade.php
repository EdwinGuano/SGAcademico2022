<html>
	<title>REPORTE REGISTRO DE NOTAS</title>
    <head>
        <style>
            /** 
                Establezca los márgenes de la página en 0, por lo que el pie de página y el encabezado
                puede ser de altura y anchura completas.
             **/
            @page {
                margin: 0cm 0cm;
            }

            /** Defina ahora los márgenes reales de cada página en el PDF **/
            body {
                margin-top: 2cm;
                margin-left: 2cm;
                margin-right: 2cm;
                margin-bottom: 2cm;
            }

            /** Definir las reglas del encabezado **/
            header {
                position: fixed;
                top: 0cm;
                left: 0cm;
                right: 0cm;
                height: 2cm;

                /** Estilos extra personales **/
                background-color: white;
                color: black;
                text-align: center;
                line-height: 0.5cm;
            }
        </style>
    </head>
    <body>
        <!-- Defina bloques de encabezado y pie de página antes de su contenido -->
        <header>
        	<table>
        		<tr>
        			<td style="width: 200px; text-align: center; padding-top: 10px;">
        				<img src="https://sgacademico.wilssoft.com/logo.jfif" style="width: 35%; text-align: center;">
        			</td>
        			<td style="width: 400px; text-align: center;">
        				<b>
        					FUERZA AÉREA ECUATORIANA <br>
							CENTRO DE OPERACIONES SECTORIALES NRO 1
						</b>
					</td>
					<td style="width: 100px;">
						Fecha: {{date('d/m/Y')}}<br>
						Hora: {{date('H:i:s')}}
					</td>
        		</tr>
        	</table>
            <br><br>
        </header>

        <!-- Envuelva el contenido de su PDF dentro de una etiqueta principal -->
        <main>
        	<br><br><br>
			<h3><center>REPORTE REGISTRO DE NOTAS </center></h3>
			<table border=1 cellspacing=0 cellpadding=2 bordercolor="666633" style="font-size: 13px; width: 100%;">
				<tr>
					<td><b>Docente:</b></td>
					<td>{{Session::get('usuario')->docente[0]->nom_doc .' '. Session::get('usuario')->docente[0]->ape_doc}}</td>
					<td><b>Periodo:</b></td>
					<td>{{$periodo->ano_per}} {{$periodo->peri_per}}</td>
				</tr> 
				<tr>
					<td><b>Curso:</b></td>
					<td>{{$curso->nom_cur}}</td>
					<td><b>Materia:</b></td>
					<td>{{$materia->nom_mat}}</td>
				</tr>
			</table>
			<br>
			<table border=1 cellspacing=0 cellpadding=2 bordercolor="666633"style="font-size: 13px; width: 100%;">
				<thead>
					<tr>
						<th>Ord.</th>
						<th>Grado</th>
						<th>Apellidos y nombres</th>
						<th>Promedio en número</th>
						<th>Promedio en letras</th>
					</tr>
				</thead>
				<tbody>
					<?php $contador = 1; ?>
					@foreach($lista_reporte as $reporte)
						<tr>
							<td style="width: 5%; text-align: center;">{{$contador++}}</td>
							<td style="width: 5%; text-align: center;">{{$reporte['grado']}}</td>
							<td style="width: 50%; text-align: center;">{{$reporte['alumno']}}</td>
							<td style="width: 20%; text-align: center;">{{$reporte['promedio_numero']}}</td>
							<td style="width: 20%; text-align: center;">
								{{$reporte['promedio_letra']}}
							</td>
						</tr>
					@endforeach
				</tbody>
			</table>

			<br><br><br><br>
			
			<table style="font-size: 15px; text-align: center; width: 100%;">
				<tbody>
					<tr>
						<td style="width: 30%; text-align: center; align-items: center;">
						</td>
						<td style="width: 40%; text-align: center; align-items: center;">
							<hr>
							{{Session::get('usuario')->docente[0]->nom_doc .' '. Session::get('usuario')->docente[0]->ape_doc}} <br>
							{{Session::get('usuario')->docente[0]->tipogrado ? Session::get('usuario')->docente[0]->tipogrado->nom_grado : ''}}<br>
							DOCENTE
						</td>
						<td style="width: 30%; text-align: center;">
						</td>
					</tr>
				</tbody>
			</table>
        </main>
    </body>
</html>