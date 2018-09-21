import golosinas.*

object mariano {
	var bolsaGolosinas = []
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(golosina) {
		bolsaGolosinas.add(golosina)
	}
	method desechar(golosina){
		bolsaGolosinas.remove(golosina)
	}
	method golosinas() { 
		return bolsaGolosinas 
	}
	
	method probarGolosinas() {
		bolsaGolosinas.forEach{golosina=>golosina.mordisco()}
	}
	method hayGolosinasSinTACC(){
		return bolsaGolosinas.any{golosina=>golosina.libreGluten()}
	}
	method preciosCuidados(){
		return bolsaGolosinas.all{golosina=>golosina.precio() <= 10}
	}
	method golosinaDeSabor(sabor){
		return bolsaGolosinas.find{golosina=>golosina.gusto() == sabor}
	}
	method golosinasDeSabor(sabor){
		 return bolsaGolosinas.filter{golosina=>golosina.gusto() == sabor}
	}
	method sabores(){
	 return	bolsaGolosinas.map{golosina=>golosina.gusto()}.withoutDuplicates()
		
	}
	method golosinaMasCara(){
		 return bolsaGolosinas.max{golosina=>golosina.precio()}
	}
	method pesoGolosinas(){
		return bolsaGolosinas.sum{golosina=>golosina.peso()}
	}
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(bolsaGolosinas)
	}
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.difference(self.sabores())
	}
}

