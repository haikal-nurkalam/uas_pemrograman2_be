package uas.kalssss.model;

import jakarta.persistence.*;

@Entity
public class Berkas {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private  Integer id_siswa;

    private String jenis;

    @Lob
    private byte[] file;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId_siswa() {
        return id_siswa;
    }

    public void setId_siswa(Integer id_siswa) {
        this.id_siswa = id_siswa;
    }

    public String getJenis() {
        return jenis;
    }

    public void setJenis(String jenis) {
        this.jenis = jenis;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
