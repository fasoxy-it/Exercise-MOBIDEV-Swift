func countStrings(arrayStrings: [String]) -> String {
    
    var dictionaryStrings = [String: Int]()
    var mapStrings: String = ""
    
    for string in arrayStrings {
        dictionaryStrings[string] = (dictionaryStrings[string] ?? 0) + 1
    }
    
    for (key, value) in dictionaryStrings {
        
        mapStrings = mapStrings + "<\(key), \(value)>, "
        
    }
    
    return mapStrings
    
}

print(countStrings(arrayStrings: ["a", "b", "c", "a", "b", "b"]))
