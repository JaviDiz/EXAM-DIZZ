package com.ekarts.servlet;

import com.ekarts.dao.CarreraDao;
import com.ekarts.dao.ClientDao;
import com.ekarts.dto.Carrera;
import com.ekarts.dto.Client;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/carrera")

public class CarreraController extends HttpServlet {
    private static final long serialVersionUID = -7558166539389234332L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DateTimeFormatter formatter = DateTimeFormatter.BASIC_ISO_DATE;
        formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        Client client = new Client(Integer.parseInt(request.getParameter("cliente")));
        String nomCarrera = request.getParameter("nomCarrera");
        LocalDate data = LocalDate.parse(request.getParameter("data"), formatter);
        LocalTime horaInici = LocalTime.parse(request.getParameter("horaInici"));
        LocalTime horaFi = LocalTime.parse(request.getParameter("horaFi"));
        int posicio = Integer.parseInt(request.getParameter("posicio"));

        Carrera carrera = new Carrera(client, nomCarrera, data, horaInici, horaFi, posicio);

        int registrosModificados = new CarreraDao().create(carrera);

        response.sendRedirect("frmClient.jsp");
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Recuperam l'acció a realitzar i es crida a la funció corresponent
		String action = request.getParameter("action");
		if (action != null) {
			switch (action) {
			default:
				this.showListCarreras(request, response);
			}
		} else {
			this.showListCarreras(request, response);
		}
	}
    
    
    private void showListCarreras(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Carrera> carreras = new CarreraDao().listar();

		System.out.println("carreras = " + carreras);
		
		// Dades a desar a la sessió de la classe
		HttpSession session = request.getSession();
		session.setAttribute("carreras", carreras);

		// request.getRequestDispatcher("frmClient.jsp").forward(request, response);
		response.sendRedirect("frmCarrera.jsp");
	}
    
    
    
}
