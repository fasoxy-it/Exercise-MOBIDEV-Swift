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

var pearson1 = Pearson()
pearson1.name = "Mattia"
pearson1.surname = "Fasoli"

var pearson2 = Pearson()
pearson2.name = "Rebecca"
pearson2.surname = "Paiardi"

var superhero = SuperHero()
superhero.name = "Stefano"
superhero.surname = "Paiardi"
superhero.power = "suona"

var world = [pearson1, pearson2, superhero]

for index in world {
    if let superheroElement = index as? SuperHero {
        print(superheroElement.superPower)
    } else {
        print(index.fullName)
    }
}

