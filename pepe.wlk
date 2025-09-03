object pepe {
    var categoria = cadete
    var faltas = 0
    var property bonoPresentismo = bonoNulo
    var property bonoResultados = bonoNulo
    
	method categoria(_categoria){
        categoria = _categoria
    }
    
    method categoria(){
        return categoria
    }
    
    method faltas(_faltas){
        faltas = _faltas
    }

    method faltas(){
        return faltas
    }

    method neto(){
        return categoria.neto()
    }

    method bonoPorResultados(_bonoPorResultados){
        bonoResultados = _bonoPorResultados
    }

    method bonoPorPresentismo(_bonoPorPresentismo){
        bonoPresentismo = _bonoPorPresentismo
    }

    method bonoPorPresentismo(){
        return bonoPresentismo.bono(self)
    }

    method bonoPorResultados(){
        return bonoResultados.bono(self)
    }

    method sueldo(){
        return self.neto() + bonoPresentismo.bono(self) + bonoResultados.bono(self)
    }
}

object cadete {
    const neto = 20000
    method neto(){
        return neto
    }
}

object gerente {
    const neto = 15000
    method neto(){
        return neto
    }
}

object bonoPresentismoNormal {
    method bono(empleado){
        if(empleado.faltas() == 0){return 2000}
        else if(empleado.faltas() == 1) {return 1000}
        else {return 0}
    }
}

object bonoPresentismoAjuste {
    method bono(empleado){
        if(empleado.faltas() == 0) {100}
        else {0}
    }
}

object bonoPresentismoDemagogico {
    method bono(empleado){
        if(empleado.neto()<18000) {500}
        else {300}
    }
}

object bonoResultadosPorcentaje {
    method bono(empleado){
        return empleado.neto() * 0.1
    }
}

object bonoResultadosMontoFijo {
    method bono(empleado){
        return 800
    }
}

object bonoNulo {
    method bono(empleado){ //Aunque sea un parametro no usado, es para el polimorfismo y que sea el mismo mensaje
        return 0
    }
}
