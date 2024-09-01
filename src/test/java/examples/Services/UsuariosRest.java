package examples.Services;

import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import examples.Model.Usuario;

@RestController
@RequestMapping("/usuarios")
public class UsuariosRest {

    private final Map<String, Usuario> usuarios = new ConcurrentHashMap<>();

    @GetMapping
    public Collection<Usuario> list() {
        return usuarios.values();
    }

    @GetMapping("/{id}")
    public Usuario get(@PathVariable String id) {
        return usuarios.get(id);
    }

    @PostMapping
    public Usuario create(@RequestBody Usuario producto) {
        usuarios.put(producto.getIdentificador(), producto);
        return producto;
    }

    @PutMapping("/{id}")
    public Usuario put(@PathVariable String id, @RequestBody Usuario producto) {
        usuarios.put(id, producto);
        return producto;
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable String id) {
        Usuario p = usuarios.remove(id);
        if (p == null) {
            throw new RuntimeException("Usuario no encontrado con id: " + id);
        }
    }

    @DeleteMapping
    public void deleteWithBody(@RequestBody Usuario producto) {
        delete(producto.getIdentificador());
    }

}
