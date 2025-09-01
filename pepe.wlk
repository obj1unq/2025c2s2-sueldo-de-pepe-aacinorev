object pepe {
    var categoria = cadete
    var faltas = 0
    var bonoPorPresentismo = bonoNulo
    var bonoPorResultados = bonoNulo
    
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

    method bonoPorPresentismo(_bonoPorPresentismo){
        bonoPorPresentismo = _bonoPorPresentismo
    }

    method bonoPorResultados(_bonoPorResultados){
        bonoPorResultados = _bonoPorResultados
    }

    method sueldo(){
        return self.neto() + bonoPorPresentismo.bono(self) + bonoPorResultados.bono(self)
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
        if(empleado.faltas() == 0){2000}
        else if(empleado.faltas() == 1) {1000}
        else {0}
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
    method bono(){
        return 800
    }
}

object bonoNulo {
    method bono(){
        return 0
    }
}