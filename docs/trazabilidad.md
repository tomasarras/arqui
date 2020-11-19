# Trazabilidad

**Feature:** "La aplicación deberá mostrar tanto los viajes futuros como los ya realizados."
<br>
Esta funcionalidad corresposponde al metodo getViajesDeUsuario(criterio) en el controlador **ViajeController** donde el criterio puede ser 'realizados' o 'pendientes',
este metodo usa a **buscarViajesDeUsuarioRealizados(idUsuario,now)** de **ViajeRepository** para traer los viajes
<br>
<br>

**Feature:** "Cada viaje estará identificado por un nombre, ciudad de destino, fechas de inicio y fin, y una descripción breve."
<br>
Esta funcionalidad corresponde a la entidad [viaje](https://github.com/tomasarras/arqui/blob/main/docs/der.md) y a la clase Viaje donde estan los atributos
<br>
<br>

**Feature:** "Cada viaje podrá estar compuesto por distintos “planes” como, por ejemplo: vuelos, reservas de hotel, viajes en colectivo, excursiones, viajes en tren y otras actividades."
<br>
Esta funcionalidad corresponde a la clase Plan, que es un plan comun (para el caso de una excursion) y a las clases que heredan de esta, PlanReservaHotel, PlanViajeColectivo, PlanViajeTren y a las [entidades](https://github.com/tomasarras/arqui/blob/main/docs/der.md) Plan, Plan_viaje_tren, Plan_reserva_hotel, Plan_viaje_colectivo
<br>
<br>

**Feature:** "La aplicación deberá mostrar cada uno de los planes. Según el tipo de plan, la aplicación mostrará los datos del mismo."
<br>
Esta funcionalidad corresponse al metodo getPlanesDeViaje(idViaje) que nos devuelve todos los planes que tenga un viaje y los datos de cada plan
<br>
<br>

**Feature:** "Para dar de alta un viaje, existirán dos alternativas: i) mediante un formulario provisto en la aplicación;"
<br>
Esta funcionalidad corresponde a crearViaje(viaje) en ViajeController
<br>
<br>

**Feature:** "o ii) enviando un archivo de texto, que contenga toda la confirmación de la reserva (ej. el emitido por la aerolinea, o por una pagina de viajes) de un vuelo. En este caso, el sistema debe extraer los datos del archivo y cargarlos."
<br>
Esta funcionalidad esta del lado del cliente no del servidor, el cliente extrae la informacion de la reserva y el metodo crearViaje(viaje) lo crea
<br>
<br>

**Feature:** "Para un vuelo que ha sido cargado, la aplicación deberá mostrar número de vuelo, compañía, fecha y hora de salida, fecha y hora de llegada, aeropuertos de salida y llegada, código de reserva, tiempo entre escalas (en caso de existir), e información de la aeronave."
<br>
Esta funcionalidad corresponde a la entidad [plan_vuelo](https://github.com/tomasarras/arqui/blob/main/docs/der.md) y a la clase PlanVuelo que tiene todos los datos de la entidad
<br>
<br>

**Feature:** "Dependiendo de la opción utilizada para dar de alta un vuelo, algunos de estos datos serán extraidos automaticamente o cargados por el usuario."
<br>
Esta funcionalidad esta del lado del cliente, donde ingresa los datos del vuelo y se crea y del lado del servidor el metodo crearViaje(viaje) lo crea
<br>
<br>

**Feature:** "En este ultimo caso, la aplicación solo solicitará número de vuelo, fecha y compañía, y el resto de los campos serán rellenados automáticamente utilizando el servicio FlightStats, que provee un API REST para tal fin (https://developer.flightstats.com)."
<br>
Esta funcionalidad no pudo ser implementada debido a que el servicio FlightStats no esta disponible
<br>
<br>

**Feature:** "Una vez creado un viaje, el usuario podrá cargar otros planes."
<br>
Esta funcionalidad esta del lado del cliente, cuando el usuario crea un viaje puede crearle planes a este mismo, y del lado del servidor, el metodo crearPlan(idViaje,plan) crea el plan a un viaje que el usuario elige, el plan solo se puede crear si esta dentro del rango de fechas del viaje que lo contiene
<br>
<br>

**Feature:** "En el caso de ser reservas de hoteles, el usuario contará con las mismas 2 opciones de carga manual o a través del envío de un archivo de texto."
<br>
Para esta funcionalidad, la carga de hoteles se puede hacer de forma manual eligiendo desde el lado del cliente al viaje que se le quiere agregar o para importar un archivo con la reserva podra elegir el viaje y tendra una opcion especial por ser una reserva de hotel, donde si hace click podra importar el archivo, para poder probar esta funcionalidad, en la raiz del repositorio esta la carpeta **archivos para importar** esta el archivo **hotel ejemplo.txt**, tener en cuenta de cambiar la fecha de inicio y fin en el archivo para que coincida con el rango del viaje
<br>
<br>

**Feature:** "En el caso de la segunda opción el sistema deberá ubicar automáticamente la reserva con un viaje existente de acuerdo con las fechas del mismo."
<br>
Esta funcionalidad se hace en el lado del cliente cuando se importa el archivo y en el servidor llama al metodo crearPlan(idViaje,plan)
<br>
<br>

**Feature:** "El resto de los tipos de planes sólo podrán se agregados de forma manual."
<br>
Esta funcionalidad en el lado del cliente, el usuario solo puede cargar todos los planes de forma manual y para el caso de la reserva de hotel tendra la posibilidad de importar el archivo
<br>
<br>

**Feature:** "Cada usuario puede generar un reporte de sus planes de viaje, ya sea pendientes, realizados, en algún rango de fechas predeterminadas, o filtrado por zona geográfica."
<br>
Esta funcionalidad corresponde del lado del cliente en la pestaña **Reporte de planes** y el usuario especificara el tipo de reporte que quiere obtener, luego del lado del cliente se llama al metodo getPlanesDelUsuario(zona, fechaInicioString, fechaFinString, estado) donde dependiendo el tipo de reporte pasara un parametro u otro
<br>
<br>

**Feature:** "Adicionalmente, la compañía dueña de la aplicación puede solicitar un reporte de los usuarios que mas viajes realizan, o también de las zonas geográficas más visitadas."
<br>
Para esta funcionalidad el usuario debe tener el rol admin, para eso se puede modificar desde la base de datos o si se importaron los datos de prueba, usar el usuario admin, ver en [Instalacion](docs/instalacion.md), luego en la pestaña **admin** se puede especificar el tipo de reporte, para el caso de los usuarios que mas viajes realizan se llama al metodo getUsuariosPorMasViajesRealizados() en **UsuarioController** que usa a la clase **ReporteUsuario** para devolver el reporte, y para el caso de un reporte de zonas geograficas mas visitadas, se llama al metodo getCiudadesMasVisitadas() en **ViajeController**
<br>
<br>

**Feature:** "Cada usuario deberá poder registrarse en la aplicación, y luego acceder mediante un nombre y contraseña."
<br>
Para esta funcionalidad, en la clase **UsuarioController** esta el metodo **crearUsuario(u)** que usa los metodos **buscarPorEmail** y **buscarPorUsername** de **UsuarioRepository** para verificar que no exista otro usuario con esos datos, luego utiliza a **BCryptPasswordEncoder** que es el metodo de encriptacion que se configuro en **WebMvcConfig** y devuelve un token generado con una clave privada desde la configuracion de **TokenConfig**, para el acceder al sistema se llama al metodo login(u) que verifica que el usuario sea correcto y le devuelve un token