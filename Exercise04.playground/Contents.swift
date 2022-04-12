func equal(stringOne: String, stringTwo: String) -> Bool {
    
    if stringOne == stringTwo {
        return true
    } else {
        return false
    }
    
}
 
func equalIgnoreCase(stringOne: String, stringTwo: String) -> Bool {
    
    if stringOne.lowercased() == stringTwo.lowercased() {
        return true
    } else {
        return false
    }
    
}

func similar2(stringOne: String, stringTwo: String) -> Bool {
    
    if stringOne.prefix(2) == stringTwo.prefix(2) {
        return true
    } else {
        return false
    }
    
}

print(equal(stringOne: "puzzeTta", stringTwo: "puzzetta"))
print(equalIgnoreCase(stringOne: "puzzeTta", stringTwo: "puzzetta"))
print(similar2(stringOne: "puzzetta", stringTwo: "puzzetta"))
