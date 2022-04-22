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

protocol Worker {
    func doWork()
}

class Employee: Person, Worker {
    var salary: Int
    
    func doWork() {
        print("Ok, basta che mi paghi \(salary)")
    }
    
    init(name: String, surname: String, salary: Int) {
        self.salary = salary
        super.init(name: name, surname: surname)
    }
}

var employee = Employee(name: "Mattia", surname: "Fasoli", salary: 2500)

employee.doWork()



