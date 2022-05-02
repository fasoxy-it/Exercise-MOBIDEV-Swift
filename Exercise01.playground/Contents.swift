/*

OPTIONAL BINDING
 
 func Pippo(string: String?) -> (lengthString: Int, upppercaseString: String) {
     if let stringNotNil = string {
         return (stringNotNil.count, stringNotNil.uppercased())
     } else {
         return (-1, "Non so")
     }
 }

 print(Pippo(string: "hello world").lengthString)
 print(Pippo(string: "hello world").upppercaseString)

 print(Pippo(string: nil).lengthString)
 print(Pippo(string: nil).upppercaseString)
 
*/

/*

FORCED UNWRAPPING

func Pippo(string: String?) -> (lengthString: Int, upppercaseString: String) {
    if string != nil {
        return (string!.count, string!.uppercased())
    } else {
        return (-1, "Non so")
    }
}

print(Pippo(string: "hello world").lengthString)
print(Pippo(string: "hello world").upppercaseString)

print(Pippo(string: nil).lengthString)
print(Pippo(string: nil).upppercaseString)

*/

/*
 
//IMPLICITLY UNWRAPPED OPTIONALS
 
func Pippo(string: String!) -> (lengthString: Int, upppercaseString: String) {
    if string != nil {
        return (string.count, string.uppercased())
    } else {
        return (-1, "Non so")
    }
}

print(Pippo(string: "hello world").lengthString)
print(Pippo(string: "hello world").upppercaseString)

print(Pippo(string: nil).lengthString)
print(Pippo(string: nil).upppercaseString)

*/

/*

// Nil-Coalescing Operator
 
let defaultString = (-1, "Non so")

func Pippo(string: String?) -> (Int, String) {
    return (string.count, string.uppercased()) ?? defaultString
}

print(Pippo(string: "hello world").lengthString)
print(Pippo(string: "hello world").upppercaseString)

print(Pippo(string: nil).lengthString)
print(Pippo(string: nil).upppercaseString)

*/


