import matrix.*

object nave {
  const property pasajeros = [neo, morfeo, trinity]
  
  method ponerPasajero(pasajero) {
    pasajeros.add(pasajero)
  }
  
  method bajarPasajero(pasajero) {
    pasajeros.remove(pasajero)
  }
  
  method cantidadPasajeros() = pasajeros.size()
  
  method pasajeroConMasVitalidad() = pasajeros.max({ p => p.vitalidad() })
  method pasajeroMenosVital() = pasajeros.min({ p => p.vitalidad() }) 
  method estaEquilibrada() {
    return self.pasajeroConMasVitalidad().vitalidad() <= self.pasajeroMenosVital().vitalidad() *2
  }
  
  method estaElElegido() = pasajeros.any({ p => p.esElegido() })
  
  method choca() {
    pasajeros.forEach({ p => p.saltar() }).clear()
  }
  
  method acelera() {
    pasajeros.filter({ p => not p.esElegido() }).forEach({ p => p.saltar() })
  }
}