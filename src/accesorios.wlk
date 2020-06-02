object farolito{
	
	method pesoDeCarga(){ return 0}
	method luminoso() { return  true }
	method peso() { return 0.5}
}
class Canasto {
	var property volumen 
	method peso() {return volumen /10}
	method pesoDeCarga(){ return (volumen *2)}
	method luminoso() { return false }
	
}
class MorralDeBici {
	var property largo
	var property ojoDeGato = false
	method peso() {return 1.2}
	method pesoDeCarga(){ return (largo/3)}
	method luminoso() { return ojoDeGato }
	
}

//Para Agregar un nuevo Accesorio. solo deberia crear una nueva class  
// respetando los method luminoso(), pesoDeCarga(), peso()