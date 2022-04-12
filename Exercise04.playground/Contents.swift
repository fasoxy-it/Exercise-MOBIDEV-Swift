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
print(similar2(stringOne: "puzzeTta", stringTwo: "puzzetta"))

func countSimilar(string: String, array: [String], function: (String, String) -> Bool) -> Int {
    
    var count: Int = 0
    
    for a in array {
        
        if function(string, a) {
            count = count + 1
        }
        
    }
    
    return count
    
}

print(countSimilar(string: "aaa", array: ["aaa", "Aaa", "aaA"], function: equal))
print(countSimilar(string: "aaa", array: ["aaa", "Aaa", "aaA"], function: equalIgnoreCase))
print(countSimilar(string: "aaa", array: ["aaa", "Aaa", "aaA"], function: similar2))
