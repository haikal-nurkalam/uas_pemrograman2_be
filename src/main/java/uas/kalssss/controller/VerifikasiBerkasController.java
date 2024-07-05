package uas.kalssss.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import uas.kalssss.model.Berkas;
import uas.kalssss.model.VerifikasiBerkas;
import uas.kalssss.repository.VerifikasiBerkasRepository;

import java.util.Optional;

@Controller
@RestController
public class VerifikasiBerkasController {
    @Autowired
    VerifikasiBerkasRepository verifikasiBerkasRepository ;

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping(path = "/verifikasiberkas")
    public @ResponseBody Iterable<VerifikasiBerkas> getAllVerifikasiBerkas() {
        // This returns a JSON or XML with the users
        return verifikasiBerkasRepository.findAll();
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping(path = "/verifikasiberkas/{id}")
    public @ResponseBody VerifikasiBerkas getSelectedVerifikasiBerkas (@PathVariable Integer id){
        return verifikasiBerkasRepository.findById(id).orElse(null);
    }
    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping(path = "/verifikasiberkas", consumes = "application/json")
    public @ResponseBody String addVerifikasiBerkas(@RequestBody VerifikasiBerkas payload) {
        verifikasiBerkasRepository.save(payload);

        return "Success";
    }


}
