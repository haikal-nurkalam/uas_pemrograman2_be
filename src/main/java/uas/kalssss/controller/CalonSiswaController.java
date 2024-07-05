package uas.kalssss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import uas.kalssss.model.CalonSiswa;
import uas.kalssss.repository.CalonSiswaRepository;

import java.util.Optional;

@Controller // This means that this class is a Controller
@RestController
public class CalonSiswaController {
    @Autowired
    private CalonSiswaRepository calonSiswaRepository;

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping(path = "/calonsiswa")
    public @ResponseBody Iterable<CalonSiswa> getAllCalonSiswa() {
        // This returns a JSON or XML with the users
        return calonSiswaRepository.findAll();
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping(path = "/calonsiswa/{id}")
    public @ResponseBody CalonSiswa getSelectedCalonSiswa (@PathVariable Integer id){
        return calonSiswaRepository.findById(id).orElse(null);
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping(path = "/calonsiswa", consumes = "application/json")
    public @ResponseBody String addCalonSiswa(@RequestBody CalonSiswa payload) {
        calonSiswaRepository.save(payload);

        return "Success";
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PatchMapping(path = "/calonsiswa/{id}", consumes = "application/json")
    public @ResponseBody String editCalonSiswa(@PathVariable Integer id, @RequestBody CalonSiswa payload) {
        Optional<CalonSiswa> optionalCalonSiswa = calonSiswaRepository.findById(id);

        if(optionalCalonSiswa.isPresent()){
            // Update the existing calon siswa entity with new data from payload
            CalonSiswa existingCalonSiswa = optionalCalonSiswa.get();
            existingCalonSiswa.setNama_lengkap(payload.getNama_lengkap());
            existingCalonSiswa.setAlamat(payload.getAlamat());
            existingCalonSiswa.setFoto(payload.getFoto());
            existingCalonSiswa.setNisn(payload.getNisn());
            existingCalonSiswa.setAsal_sekolah(payload.getAsal_sekolah());
            existingCalonSiswa.setNama_ortu(payload.getNama_ortu());
            existingCalonSiswa.setStatus_pendaftaran(payload.getStatus_pendaftaran());
            existingCalonSiswa.setNo_pendaftaran(payload.getNo_pendaftaran());
            existingCalonSiswa.setTanggal_lahir(payload.getTanggal_lahir());
            existingCalonSiswa.setTelp(payload.getTelp());

            // Save the updated calon siswa entity
            calonSiswaRepository.save(existingCalonSiswa);
            return "Success";
        } else{
            return "Calon Siswa not found";
        }
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @DeleteMapping(path = "calonsiswa/{id}")
    public @ResponseBody String deleteCalonSiswa(@PathVariable Integer id) {
        // Check if the Calon Siswa exists
        Optional<CalonSiswa> optionalCalonSiswa = calonSiswaRepository.findById(id);

        if (optionalCalonSiswa.isPresent()) {
            // Calon Siswa found, delete it
            calonSiswaRepository.deleteById(id);
            return "Calon Siswa deleted successfully";
        } else {
            // Calon Siswa not found
            return "Calon Siswa not found";
        }
    }
}
