package edu.isistan.controller;

import java.util.List;
import java.util.NoSuchElementException;
import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import edu.isistan.model.Usuario;
import edu.isistan.model.Viaje;
import edu.isistan.repository.UsuarioRepository;
import edu.isistan.repository.ViajeRepository;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("usuarios/viajes")
public class ViajeController extends AbsController {
	
	@Autowired
	private ViajeRepository repository;
	
	@Autowired
	private UsuarioRepository repositoryUsuarios;

	/**
	 * 
	 * @return 200 y todos los viajes
	 */
	/*@GetMapping
    public ResponseEntity<List<Viaje>> getViajes() {
		return ResponseEntity
				.status(Response.SC_OK)
				.body(repository.findAll());
    }*/
	
	@GetMapping
    public ResponseEntity<List<Viaje>> getViajesDeUsuario() {
		int idUsuario = getIdUsuarioDelToken();
		List<Viaje> viajes = repository.buscarViajesDeUsuario(idUsuario);
		return ResponseEntity
				.status(Response.SC_OK)
				.body(viajes);
	}
	
	/**
	 * Obtiene un viaje por id
	 * @param id del viaje
	 * @return 200 y el viaje
	 * @return 404 si el viaje no existe
	 */
	@GetMapping("/{id}")
    public ResponseEntity<Viaje> getViaje(@PathVariable int id) {
		try {
			Viaje viaje = repository.findById(id).get();
			if (lePerteneceAlUsuario(viaje)) {
				return ResponseEntity
						.status(Response.SC_OK)
						.body(viaje);
			} else {
				return ResponseEntity
						.status(Response.SC_FORBIDDEN)
						.build();
			}
			
		} catch (NoSuchElementException e) {
			return ResponseEntity
				.status(Response.SC_NOT_FOUND)
				.build();
		}
    }
	
	/**
	 * 
	 * @param viaje que se va a crear
	 * @return 201 y el viaje si se creo
	 */
	/*@PostMapping
    public ResponseEntity<Viaje> crearViaje(@RequestBody Viaje viaje) {
		Viaje v = new Viaje(viaje.getNombre());
		v = repository.save(v);
		return ResponseEntity
				.status(Response.SC_CREATED)
				.body(v);
    }*/
	
	@PostMapping
    public ResponseEntity<Viaje> crearViaje(@RequestBody Viaje viaje) {
		Viaje v = new Viaje();
		v.setNombre(viaje.getNombre());
		v.setCiudadDestino(viaje.getCiudadDestino());
		v.setDescripcion(viaje.getDescripcion());
		v.setFechaFin(viaje.getFechaFin());
		v.setFechaInicio(viaje.getFechaInicio());
		int idUsuario = getIdUsuarioDelToken();
		Usuario usuario = repositoryUsuarios.findById(idUsuario).get();
		v.setUsuario(usuario);
		v = repository.save(v);

		System.out.println(idUsuario);
		return ResponseEntity
				.status(Response.SC_CREATED)
				.body(v);
    }
	
	/**
	 * 
	 * @param id del viaje que se va a borrar
	 * @return 204 si se borro el viaje
	 * @return 404 si el viaje no existe
	 */
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> borrarViaje(@PathVariable int id) {
		try {
			Viaje viaje = repository.findById(id).get();
			if (lePerteneceAlUsuario(viaje)) {
				repository.delete(viaje);
				
				return ResponseEntity
						.status(Response.SC_NO_CONTENT)
						.build();
			} else {
				return ResponseEntity
						.status(Response.SC_FORBIDDEN)
						.build();
			}
			
		} catch (NoSuchElementException e) {
			return ResponseEntity
					.status(Response.SC_NOT_FOUND)
					.build();
		}
	}
	
	/**
	 * 
	 * @param id del viaje que se va a modificar
	 * @param viaje con los datos que se van a modificar
	 * @return 200 y el viaje si se modifico
	 * @return 404 si el viaje no existe
	 */
	@PutMapping("/{id}")
	public ResponseEntity<Viaje> modificarViaje(@PathVariable int id,@RequestBody Viaje viaje) {
		try {
			Viaje v = repository.findById(id).get();
			if (lePerteneceAlUsuario(v)) {
				v.setNombre(viaje.getNombre());
				v.setCiudadDestino(viaje.getCiudadDestino());
				v.setFechaInicio(viaje.getFechaInicio());
				v.setFechaFin(viaje.getFechaFin());
				v.setDescripcion(viaje.getDescripcion());
				repository.flush();
				
				return ResponseEntity
						.status(Response.SC_OK)
						.body(v);
			} else {
				return ResponseEntity
						.status(Response.SC_FORBIDDEN)
						.build();
			}
			
		} catch (NoSuchElementException e) {
			return ResponseEntity
					.status(Response.SC_NOT_FOUND)
					.build();
		}
	}
}
