class Pearson {
    var name: String = "Mattia"
    var surname: String = "Fasoli"
    
    var fullName: (String) {
        get {
            return "\(name) \(surname)"
        }
    }
}

var pearson = Pearson()

print("\(pearson.fullName)")

