package com.javieranova.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;

@Controller
public class ControladorLibros {

    // HashMap para almacenar los libros y autores
    private static HashMap<String, String> listaLibros = new HashMap<String, String>();

    // Constructor con información de prueba
    public ControladorLibros() {
        listaLibros.put("Odisea", "Homero");
        listaLibros.put("Don Quijote de la Mancha", "Miguel de Cervantes");
        listaLibros.put("El Código Da Vinci", "Dan Brown");
        listaLibros.put("Alicia en el país de las maravillas", "Lewis Carroll");
        listaLibros.put("El Hobbit", "J.R.R. Tolkien");
        listaLibros.put("El alquimista", "Paulo Coelho");
    }

    // Aqupi se obtienen todos los libros
    @GetMapping("/libros")
    public String obtenerTodosLosLibros(Model model) {
        model.addAttribute("libros", listaLibros.keySet());
        return "libros"; // recuerda que no es necesario poner .jsp
    }

    // Nos da la información de un libro
    @GetMapping("/libros/{nombre}")
    public String obtenerInformacionDeLibro(@PathVariable String nombre, Model model) {
        String autor = listaLibros.get(nombre);
        if (autor == null) { //si el valor es igual a nulo el libro no se encuentra
            model.addAttribute("mensaje", "El libro no se encuentra en nuestra lista.");
            return "detalleLibro";  
        } else {
            model.addAttribute("libro", nombre);
            model.addAttribute("autor", autor);
            return "detalleLibro";  // Si el libro existe, muestra el nombre y autor
        }
    }


    // Método para mostrar el formulario de nuevo libro
    @GetMapping("/libros/formulario")
    public String formularioLibro() {
        return "formularioLibros"; 
    }

    // Método para procesar el formulario y agregar el libro
    @PostMapping("/procesa/libro")
    public String procesaLibro(@RequestParam String nombreLibro, @RequestParam String nombreAutor) {
        listaLibros.put(nombreLibro, nombreAutor); // Agrega el libro a la lista
        return "redirect:/libros"; // Redirecciona a la lista de libros
    }
}
