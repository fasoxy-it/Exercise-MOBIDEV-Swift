func Pippo(string: String?) -> (lengthString: Int, uppercaseString: String) {
    
    if let stringNotNull = string {
        return (stringNotNull.count, stringNotNull.uppercased())
    } else {
        return (-1, "Non so")
    }
    
}

Pippo(string: "hello world")

Pippo(string: nil)
