class Pearson {
    var name: String = "Mattia"
    var surname: String = "Fasoli"
    
    var fullName: (String, String) {
        get {
            return (name, surname)
        }
        set {
            name = newValue.0
            surname = newValue.1
        }
    }
}

var pearson = Pearson()

print("\(pearson.fullName.0) \(pearson.fullName.1)")

pearson.fullName = ("Rebecca", "Paiardi")

print("\(pearson.fullName.0) \(pearson.fullName.1)")

