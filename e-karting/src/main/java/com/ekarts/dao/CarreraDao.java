package com.ekarts.dao;

import java.sql.*;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.*;

import com.ekarts.dto.Client;
import com.ekarts.enums.KartTypes;
import com.ekarts.dto.Carrera;

public class CarreraDao {
    public int create(Carrera carrera) {
        String SQL_INSERT = "INSERT INTO carreres(`car_cli_id`, `car_name`, `car_data`, `car_horaInici`, `car_horaFi`, `car_posicio`) "
                + " VALUES(?, ?, ?, ?, ?, ?)";
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
            conn = DBConnection.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            int i = 1;
            stmt.setInt(i++, carrera.getClient().getId());
            stmt.setString(i++, carrera.getNom());
            stmt.setDate(i++,  Date.valueOf(carrera.getData()));
            stmt.setTime(i++, Time.valueOf(carrera.getHoraInici()));
            stmt.setTime(i++, Time.valueOf(carrera.getHoraFi()));
            stmt.setInt(i++, carrera.getPosicio());
            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            DBConnection.close(stmt);
            DBConnection.close(conn);
        }
        return rows;
    }
    
    
    public List<Carrera> listar() {
		String SQL_SELECT = "SELECT car_name, car_posicio " + " FROM carreres";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Carrera carrera = null;
		List<Carrera> carreras = new ArrayList<>();
		
		try {
			conn = DBConnection.getConnection();
			stmt = conn.prepareStatement(SQL_SELECT);
			rs = stmt.executeQuery();
			while (rs.next()) {
				
				String nom = rs.getString("car_name");
				int posicio = rs.getInt("car_posicio");
				
				carrera = new Carrera(nom, posicio);
				carreras.add(carrera);
			}
		} catch (SQLException ex) {
			ex.printStackTrace(System.out);
		} finally {
			DBConnection.close(rs);
			DBConnection.close(stmt);
			DBConnection.close(conn);
		}
		return carreras;
	}
    
    
}


