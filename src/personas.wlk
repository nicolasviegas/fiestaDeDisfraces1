class Persona {
	var disfraz
	var edad
	var personalidad
	
	method edad() = edad
	
	method esSexy() = personalidad.esSexySegunPersonalidad(self)
	
}

object alegre{
	method esSexySegunPersonalidad(persona) = false
}

object taciturna{
	method esSexySegunPersonalidad(persona) = persona.edad() < 30
}
