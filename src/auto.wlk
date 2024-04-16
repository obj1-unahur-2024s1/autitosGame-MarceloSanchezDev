import wollok.game.*

object auto {

	// definimos los atributos para imagen y posición de nuestro elemento
	var property image = "autitoRojo.png"
	var property position = game.at(0, 0)
	var property nafta = 0

	method moverArriba() {
		if (nafta >= 10) {
			nafta -= 10
			self.position(self.position().up(1))
		}else{
			self.position(game.at(0, 0))
			game.say(self,"no tengo nafta")
		}
	}

	method moverDerecha() {
		if (nafta >= 10) {
			nafta -= 10
			self.position(self.position().right(1))
		}else{
			self.position(game.at(0, 0))
			game.say(self,"no tengo nafta")
		}
	}

	method moverAbajo() {
		if (nafta >= 10) {
			nafta -= 10
			self.position(self.position().down(1))
		}else{
			self.position(game.at(0, 0))
			game.say(self,"no tengo nafta")
		}
	}

	method moverIzquierda() {
		if (nafta >= 10) {
			nafta -= 10
			self.position(self.position().left(1))
		}else{
			self.position(game.at(0, 0))
			game.say(self,"no tengo nafta")
		}
	}

	method choca(pared) {
		if (image == "autitoRojo.png") {
			self.image("autitoAzul.png")
		} else if (image == "autitoAzul.png") {
			self.image("autitoVerde.png")
		} else {
			self.image("autitoRojo.png")
		}
	}

	method cargarNafta() {
		nafta += 100
	}

	method cantaNafta() {
		return "tengo " + nafta + " nafta"
	}

}

