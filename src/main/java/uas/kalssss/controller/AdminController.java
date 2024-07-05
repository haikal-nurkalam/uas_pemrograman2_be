package uas.kalssss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import uas.kalssss.model.Admin;
import uas.kalssss.model.CalonSiswa;
import uas.kalssss.repository.AdminRepository;
import uas.kalssss.repository.CalonSiswaRepository;

import java.util.Optional;

@Controller
@RestController
public class AdminController {
    @Autowired
    private AdminRepository adminRepository;

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping(path = "/admin")
    public @ResponseBody Iterable<Admin> getAllAdmin() {
        // This returns a JSON or XML with the users
        return adminRepository.findAll();
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping(path = "/admin/{id}")
    public @ResponseBody Admin getSelectedAdmin (@PathVariable Integer id){
        return adminRepository.findById(id).orElse(null);
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping(path = "/admin", consumes = "application/json")
    public @ResponseBody String addAdmin(@RequestBody Admin payload) {
        adminRepository.save(payload);

        return "Success";
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PatchMapping(path = "/admin/{id}", consumes = "application/json")
    public @ResponseBody String editAdmin(@PathVariable Integer id, @RequestBody Admin payload) {
        Optional<Admin> optionalAdmin = adminRepository.findById(id);
        if(optionalAdmin.isPresent()){
            Admin existingAdmin = optionalAdmin.get();
            existingAdmin.setNama(payload.getNama());
            existingAdmin.setPassword(payload.getPassword());
            existingAdmin.setUsername(payload.getUsername());

            adminRepository.save(existingAdmin);
            return "Success";

        } else{
            return "Admin not found";
        }
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @DeleteMapping(path = "admin/{id}")
    public @ResponseBody String deleteAdmin(@PathVariable Integer id) {
        // Check if the Calon Siswa exists
        Optional<Admin> optionalAdmin = adminRepository.findById(id);

        if (optionalAdmin.isPresent()) {
            // Calon Siswa found, delete it
            adminRepository.deleteById(id);
            return "Admin deleted successfully";
        } else {
            // Calon Siswa not found
            return "Admin not found";
        }
    }


}
