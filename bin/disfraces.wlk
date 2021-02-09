import fiesta.*

class Disfraz {
	var nombre
	var fechaDeConfeccion
	var tipoDisfraz = []
	var personaQueLoUsa
	
	method fechaDeConfeccion() = fechaDeConfeccion
	method personaQueLoUsa() = personaQueLoUsa
	method puntaje(unaFiesta) = tipoDisfraz.sum({unTipo => unTipo.puntuacion(fiesta)})
	
}

class Gracioso inherits Disfraz{
	var nivelDeGracia
	
	method puntuacion(unaFiesta){
		if(personaQueLoUsa.edad() > 50){
			return nivelDeGracia * 3 	
		}
		else{
			return nivelDeGracia
		}
		
	} 
}

class Tobara inherits Disfraz{
	
	method puntuacion(unaFiesta){
		//const elDiaDeHoy = new Date()
	    if((fiesta.fecha() - self.fechaDeConfeccion())  > 2){
	    	return 5
	    }
	    else{
	    	return 2
	    }
	}
}

class Careta inherits Disfraz{
	var valorDelPersonaje
	
	method puntuacion(unaFiesta) = valorDelPersonaje
}

class Sexies inherits Disfraz{
	method puntuacion(unaFiesta){
		if(personaQueLoUsa.esSexy()){
			return 15
		}
		else{
			return 2
		}
	}
}