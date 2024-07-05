package uas.kalssss.model;


import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;

import java.sql.Blob;
import java.util.Date;

@Entity
public class CalonSiswa {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private  Integer no_pendaftaran;

    private String nisn;

    private String nama_lengkap;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date tanggal_lahir;

    private String alamat;

    private String nama_ortu;

    private String telp;

    @Lob
    private byte[] foto;

    private String asal_sekolah;

    private Integer status_pendaftaran;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNo_pendaftaran() {
        return no_pendaftaran;
    }

    public void setNo_pendaftaran(Integer no_pendaftaran) {
        this.no_pendaftaran = no_pendaftaran;
    }

    public String getNisn() {
        return nisn;
    }

    public void setNisn(String nisn) {
        this.nisn = nisn;
    }

    public String getNama_lengkap() {
        return nama_lengkap;
    }

    public void setNama_lengkap(String nama_lengkap) {
        this.nama_lengkap = nama_lengkap;
    }

    public Date getTanggal_lahir() {
        return tanggal_lahir;
    }

    public void setTanggal_lahir(Date tanggal_lahir) {
        this.tanggal_lahir = tanggal_lahir;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public String getNama_ortu() {
        return nama_ortu;
    }

    public void setNama_ortu(String nama_ortu) {
        this.nama_ortu = nama_ortu;
    }

    public String getTelp() {
        return telp;
    }

    public void setTelp(String telp) {
        this.telp = telp;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public String getAsal_sekolah() {
        return asal_sekolah;
    }

    public void setAsal_sekolah(String asal_sekolah) {
        this.asal_sekolah = asal_sekolah;
    }

    public Integer getStatus_pendaftaran() {
        return status_pendaftaran;
    }

    public void setStatus_pendaftaran(Integer status_pendaftaran) {
        this.status_pendaftaran = status_pendaftaran;
    }
}
