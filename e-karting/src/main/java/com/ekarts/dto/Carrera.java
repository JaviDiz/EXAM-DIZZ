package com.ekarts.dto;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;

public class Carrera {
    private int id;
    private Client client;
    private String nom;
    private LocalDate data;
    private LocalTime horaInici;
    private LocalTime horaFi;
    private int posicio;

    public Carrera(Client client, String nom, LocalDate data, LocalTime horaInici, LocalTime horaFi, int posicio) {
        this.client = client;
        this.nom = nom;
        this.data = data;
        this.horaInici = horaInici;
        this.horaFi = horaFi;
        this.posicio = posicio;
    }

    public Carrera(int id, Client client, String nom, LocalDate data, LocalTime horaInici, LocalTime horaFi, int posicio) {
        this.id = id;
        this.client = client;
        this.nom = nom;
        this.data = data;
        this.horaInici = horaInici;
        this.horaFi = horaFi;
        this.posicio = posicio;
    }
    
    public Carrera(String nom, int posicio) {
        this.nom = nom;
        this.posicio = posicio;
    }
    

    public Carrera(int id2, int client2, String name, Date data2, Time horaInici2, Time horaFi2, int posicio2) {
		// TODO Auto-generated constructor stub
	}

	

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public LocalTime getHoraInici() {
        return horaInici;
    }

    public void setHoraInici(LocalTime horaInici) {
        this.horaInici = horaInici;
    }

    public LocalTime getHoraFi() {
        return horaFi;
    }

    public void setHoraFi(LocalTime horaFi) {
        this.horaFi = horaFi;
    }

    public int getPosicio() {
        return posicio;
    }

    public void setPosicio(int posicio) {
        this.posicio = posicio;
    }

    @Override
    public String toString() {
        return "Carrera{" +
                "id=" + id +
                ", client=" + client +
                ", nom='" + nom + '\'' +
                ", data=" + data +
                ", horaInici=" + horaInici +
                ", horaFi=" + horaFi +
                ", posicio=" + posicio +
                '}';
    }
}
