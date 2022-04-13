class Pearson {
    var name: String = "Mattia"
    var surname: String = "Fasoli"
    
    var fullName: (String) {
        get {
            return "\(name) \(surname)"
        }
    }
}

class SuperHero: Pearson {
    var power: String = "fa puzzette" {
        willSet {
            print("Sto per cambiare il valore da \(power) a \(newValue)")
        }
    }
    
    var superPower: (String) {
        get {
            return "\(name) \(surname) \(power)"
        }
    }
}

var superhero = SuperHero()

print(superhero.superPower)

superhero.power = "fa cacchette"

print(superhero.superPower)




