
package cl;

import java.time.LocalDate;
import java.util.ArrayList;
import rondasMundial.*;
import java.util.Date;


/**esta clase posee los componentes principales del mundial su constructor su get y set 
 * respectivos
 * @author DELL
 *
 */
public class Mundiales {
    
	private String nombreMundial;
    private LocalDate fechaInicio;
    private boolean estado;
    private String paisOrganizador;
    private String EquipoPrimerLugar;
    private String EquipoSegundoLugar;
    private String EquipoTercerLugar;
    
    private Resultados resultadosMundial;
    private ArrayList<Equipo> equiposMundial;

    public Mundiales() {
    }

    public Mundiales( String nombreMundial, LocalDate fechaInicio, String paisOrganizador,  boolean estado) {
        this.equiposMundial = new ArrayList();
    	this.nombreMundial = nombreMundial;
    	this.fechaInicio = fechaInicio;
        this.paisOrganizador = paisOrganizador;
        this.estado = estado;
        
    }

    public LocalDate getAno() {
        return fechaInicio;
    }

    public String getPaisOrganizador() {
        return paisOrganizador;
    }
    
    

    public boolean getEstado() {
        return estado;
    }

    public void setAno(LocalDate fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public void setPaisOrganizador(String paisOrganizador) {
        this.paisOrganizador = paisOrganizador;
    }
    
    
    public void setEstado(boolean estado) {
        this.estado = estado;
    }

	public String getNombreMundial() {
		return nombreMundial;
	}

	public void setNombreMundial(String nombreMundial) {
		this.nombreMundial = nombreMundial;
	}


	
	public ArrayList<Equipo> getEquiposMundial() {
		return equiposMundial;
	}

	public void setEquiposMundial(ArrayList<Equipo> equiposMundial) {
		this.equiposMundial = equiposMundial;
	}
	
	
	public String getEquipoPrimerLugar() {
		return EquipoPrimerLugar;
	}

	public void setEquipoPrimerLugar(String equipoPrimerLugar) {
		EquipoPrimerLugar = equipoPrimerLugar;
	}

	public String getEquipoSegundoLugar() {
		return EquipoSegundoLugar;
	}

	public void setEquipoSegundoLugar(String equipoSegundoLugar) {
		EquipoSegundoLugar = equipoSegundoLugar;
	}

	public String getEquipoTercerLugar() {
		return EquipoTercerLugar;
	}

	public void setEquipoTercerLugar(String equipoTercerLugar) {
		EquipoTercerLugar = equipoTercerLugar;
		
	}
	
	public Resultados getResultadosMundial() {
		return resultadosMundial;
	}

	public void setResultadosMundial(Resultados ronda1) {
		this.resultadosMundial = ronda1;
	}

	@Override
	public String toString() {
		return "Mundiales: ano=" + fechaInicio + ", paisOrganizador=" + paisOrganizador + ", estado=" + estado + " ,Resultados Mundial= " + resultadosMundial;
	}

	
	//---------------------------------------------------------------------------------------------------
	/**
	 * Este metodo genera el cuadro del juego con los resultados del juego
	 */
   public void generarCuadrosJuego() {
	   
	   this.resultadosMundial = new Resultados(this.equiposMundial, this.nombreMundial);
	   
   }
   
   
   
   public void guardarEquipos(Equipo[] cuadro1, Equipo[] cuadro2, Equipo[] cuadro3, Equipo[] cuadro4, Equipo[] cuadro5, Equipo[] cuadro6,
		   Equipo[] cuadro7,Equipo[] cuadro8 ){
	   
	   this.equiposMundial = new ArrayList<Equipo>();
	   
	   for(Equipo e: cuadro1) {
		   
		   equiposMundial.add(e);
		   
	   }
	   
	   for(Equipo e: cuadro2) {
		   
		   equiposMundial.add(e);
		   
	   }
	   
	   for(Equipo e: cuadro3) {
		   
		   equiposMundial.add(e);
		   
	   }
	   
	   for(Equipo e: cuadro4) {
		   
		   equiposMundial.add(e);
		   
	   }
	   
	   for(Equipo e: cuadro5) {
		   
		   equiposMundial.add(e);
		   
	   }
	   
	   for(Equipo e: cuadro6) {
		   
		   equiposMundial.add(e);
		   
	   }
	   
	   for(Equipo e: cuadro7) {
		   
		   equiposMundial.add(e);
		   
	   }
	   
	   for(Equipo e: cuadro8) {
		   
		   equiposMundial.add(e);
		   
	   }
	   
	   
   }
    
    
    
}
