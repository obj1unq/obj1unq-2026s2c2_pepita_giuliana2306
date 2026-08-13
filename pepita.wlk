object pepita {
  var energia = 100
  
  method volar(distancia) {
    energia = energia - 10 - distancia / 10
  }
  method descansar() {
        energia = energia + 10
    }
    method estaCansada() {
        return energia < 30
    }
    method comer(alimento) {
        energia = energia + alimento.energiaQueAporta()
    }
}

object alpiste {
 method energiaQueAporta() {
        return 25
    }
}

object manzana {
    var gradoDeMadurez = 1 
    const calorias = 20
    
    method madurez() {
        gradoDeMadurez = gradoDeMadurez + 1
    }
    method energiaQueAporta() {
        return calorias * self._multiplicador() 
    }
    method _multiplicador() {
        return if (gradoDeMadurez < 3)
                 gradoDeMadurez
                 else 0
    }
}

object pepon {
    var energia = 30

    method comer(alimento) {
        energia = energia + alimento.energiaQueAporta() / 2
    }
    method volar(distancia) {
        energia = energia - 20 - distancia*2
    }
    method estaCansado() {
        return energia < 34
    }
}

object rebeca {
    var ave  = null 
    var cantidad = 0

    method mascota(nombreAve) {
        ave = nombreAve
        cantidad = 0
    }
   method alimentar(alimento) {
    ave.comer(alimento)
    cantidad = cantidad + 1
   }
   method cenas() {
    return cantidad
   }
}

// 1.¿Qué métodos son consultas y cuáles son órdenes?
// consultas: cenas(), estaCansado(), energiaQueAporta(), _multiplicador()
// órdenes: alimentar(alimento), mascota(nombre), volar(distancia), comer(alimento), madurez(),
//descansar().

// 2.En cuanto a cada situación que manifiesta polimorfismo:

// a. ¿Cuál es el mensaje polimórfico y quién lo envía?
   
 //Los mensajes polimórficos son:
  //-energiaQueAporta(), lo envia pepita o pepon cuando reciben
 // un alimento.
 // -comer(alimento), lo envia Rebeca. 
   

// b. Considerando los objetos que entienden el mensaje polimórfico ¿Qué nombre le pondrías 
// al tipo polimórfico?

// 1. energiaQueAporta(), le pondría el nombre alimento.
// 2. comer(alimento, le pondria el nombre ave.

// d. ¿Qué objetos implementan ese tipo?
// 1.Lo implementan manzana y alpiste.
// 2.Lo implementan pepita o pepon
