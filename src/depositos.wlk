import bicis.*
import accesorios.*

class Depositos {
	var bicis = []
	

	method agregarBici(bici){
		bicis.add(bici)
	}
	method sonRapidas(){
		return bicis.filter({cosas => cosas.velocidadDeCrucero()>25})
	}
	
	method tieneParallevarCarga(valorDeCarga){
		return bicis.any({cosas => cosas.carga() > valorDeCarga })
	}
	
	method esNocturno(){
		return bicis.all({cosas=> cosas.tieneluz()})
	}
	method marcasdeBicis() {
	  return  bicis.map({bici => bici.marca()}).asSet()
	}
	//3
	method biciMasRapida(){
		return bicis.max({cosas=> cosas.velocidadDeCrucero()})
	}
	method marcaDeBiciMasRapida(){
		return self.biciMasRapida().marca()
	}
	method bicisLargas(){
		return bicis.filter({bici => bici.largoEnCm() > 170 })
	}
	method cargaBicisLargas(){
		return self.bicisLargas().sum({bici=> bici.carga()})
	}
	method biciSinAccesorio(){
		return bicis.count({bici => bici.accesorios().isEmpty()})
	}
	//4
	method biciCompaneraDe(bicicleta){
		return bicis.filter({ bici => ( bici.marca() == bicicleta.marca()) and ( (bici.largoEnCm() - bicicleta.largoEnCm()).between(11,-11)) and(bici != bicicleta ) })
	}
///DESAFIO...
   
   
}
