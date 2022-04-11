func Pippo(string: String?) -> String {
    
    if let stringNotNull = string {
        return stringNotNull.uppercased()
    } else {
        return "Non so"
    }
    
}

Pippo(string: "ciao")
