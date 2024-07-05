package uas.kalssss.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import uas.kalssss.model.Admin;
import uas.kalssss.model.Berkas;

import uas.kalssss.model.CalonSiswa;
import uas.kalssss.repository.BerkasRepository;

import java.util.Optional;

@Controller // This means that this class is a Controller
@RestController
public class BerkasController {

    @Autowired
    BerkasRepository berkasRepository ;

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping(path = "/berkas")
    public @ResponseBody Iterable<Berkas> getAllBerkas() {
        // This returns a JSON or XML with the users
        return berkasRepository.findAll();
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping(path = "/berkas/{id}")
    public @ResponseBody Berkas getSelectedBerkas (@PathVariable Integer id){
        return berkasRepository.findById(id).orElse(null);
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping(path = "/berkas", consumes = "application/json")
    public @ResponseBody String addBerkas(@RequestBody Berkas payload) {
        berkasRepository.save(payload);

        return "Success";
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PatchMapping(path = "/berkas/{id}", consumes = "application/json")
    public @ResponseBody String editBerkas(@PathVariable Integer id, @RequestBody Berkas payload) {
        Optional<Berkas> optionalBerkas = berkasRepository.findById(id);
        if(optionalBerkas.isPresent()){
            Berkas existingBerkas = optionalBerkas.get();
            existingBerkas.setFile(payload.getFile());
            existingBerkas.setStatus(payload.getStatus());
            existingBerkas.setJenis(payload.getJenis());

            berkasRepository.save(existingBerkas);
            return "Success";

        } else{
            return "Berkas not found";
        }
    }


}
