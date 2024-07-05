package uas.kalssss.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;

import java.util.Date;

@Entity
public class VerifikasiBerkas {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private  Integer id_berkas;

    private  Integer id_admin;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date tgl_verifikasi;

    private  Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId_berkas() {
        return id_berkas;
    }

    public void setId_berkas(Integer id_berkas) {
        this.id_berkas = id_berkas;
    }

    public Integer getId_admin() {
        return id_admin;
    }

    public void setId_admin(Integer id_admin) {
        this.id_admin = id_admin;
    }

    public Date getTgl_verifikasi() {
        return tgl_verifikasi;
    }

    public void setTgl_verifikasi(Date tgl_verifikasi) {
        this.tgl_verifikasi = tgl_verifikasi;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
