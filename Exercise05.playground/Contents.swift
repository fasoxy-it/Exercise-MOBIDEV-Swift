func countSimilar(string: String, array: [String], function: (String, String) -> Bool) -> Int {
    
    var count: Int = 0
    
    for a in array {
        
        if function(string, a) {
            count = count + 1
        }
        
    }
    
    return count
    
}

print(countSimilar(string: "aaa", array: ["aaa", "Aaa", "aaA"], function: {(stringOne: String, stringTwo: String) -> Bool in return stringOne == stringTwo ? true : false}))


print(countSimilar(string: "aaa", array: ["aaa", "Aaa", "aaA"], function: {(stringOne: String, stringTwo: String) -> Bool in return stringOne.lowercased() == stringTwo.lowercased() ? true : false}))

print(countSimilar(string: "aaa", array: ["aaa", "Aaa", "aaA"], function: {(stringOne: String, stringTwo: String) -> Bool in return stringOne.prefix(2) == stringTwo.prefix(2) ? true : false}))
