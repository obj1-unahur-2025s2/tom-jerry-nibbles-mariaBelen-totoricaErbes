object tom {
    var energia = 50

    method comer(raton){
        energia = energia + 12 + raton.peso()
    }
    //indicación
    method correr(metros){
        energia = energia - metros/2
    }

    method velocidadMaxima(){return 5 + energia/10}
    //consulta
    method puedeCazar(distancia){return energia - distancia/2 >= 0}

    method cazar(raton, distancia){
        if(tom.puedeCazar(distancia)){
            tom.correr(distancia)
            tom.comer(raton)
        }
    }
}

//al usar tom.mensaje() llamo a una acción dentro del propio objeto, tambien se utiliza self.mensaje()

object jerry {
  var edad = 2

  method cumplirAnios(){edad + 1} 
  
  method peso() {return edad*20}
}

object nibbles {
  method peso() {return 35}
}

// Inventar otro ratón
object speedyGonzalez {
    var cantidadDeQueso = 4

    method robarQueso(){
        cantidadDeQueso = cantidadDeQueso + 1
    }

    method peso() {return cantidadDeQueso * 0.5}

    method velocidadMaxima(){return 1 + cantidadDeQueso/2}
}
