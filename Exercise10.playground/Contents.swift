class Person {
    var name: String
    var surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    var fullName: (String) {
        get {
            return "\(name) \(surname)"
        }
    }
}

class SuperHero: Person {
    var power: String {
        willSet {
            print("Sto per cambiare il valore da \(power) a \(newValue)")
        }
    }
    
    init(name: String, surname: String, power: String) {
        self.power = power
        super.init(name: name, surname: surname)
    }
    
    var superPower: (String) {
        get {
            return "\(name) \(surname) \(power)"
        }
    }
}

protocol Worker {
    func doWork() -> String
}

extension SuperHero: Worker {
    func doWork() -> String {
        return "Sono \(name) \(surname), salvo il mondo gratis!"
    }
}

class Employee: Person, Worker {
    var salary: Int
    
    func doWork() -> String {
        return "Ok, basta che mi paghi \(salary)"
    }
    
    init(name: String, surname: String, salary: Int) {
        self.salary = salary
        super.init(name: name, surname: surname)
    }
}

var employee = Employee(name: "Mattia", surname: "Fasoli", salary: 2500)
var superhero = SuperHero(name: "Rebecca", surname: "Paiardi", power: "fa puzzette")

print(employee.doWork())
print(superhero.doWork())

