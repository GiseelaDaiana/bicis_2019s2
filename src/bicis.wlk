import accesorios.*

class Bici {
	var property marca =""
	const  accesorios = []
	var property rodado 
	var property largoEnCm 
	
	method accesorios(){
		return accesorios
	}
	method agregarAccesorio(a){
		accesorios.add(a)
	}
	method altura(){return  rodado * 2.5 + 15}
	method velocidadDeCrucero(){
		if (largoEnCm > 120) {
			return rodado + 6
		}else{
			return rodado + 2
		}
	}
	method carga(){
		return accesorios.sum({cosa => cosa.pesoDeCarga()})
	}
	method peso(){
		return self.pesoAccesorios() + rodado/2
	}
	method tieneluz(){
		return accesorios.any({cosa => cosa.luminoso()})
	}
	method pesoAccesorios(){
		return accesorios.sum({ cosa => cosa.peso() })
	}
	method accesorioLiviano(){
		return accesorios.count({cosa => cosa.peso() < 1 })
	}
}


