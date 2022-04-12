var weekDays = [Int: String]()

weekDays[1] = "Lunedì"
weekDays[2] = "Martedì"
weekDays[3] = "Mercoledì"
weekDays[4] = "Giovedì"
weekDays[5] = "Venerdì"
weekDays[6] = "Sabato"
weekDays[7] = "Domenica"

func weekDayName(numero: Int) -> String {
    guard numero > 0 && numero < 8 else {
        return "nil"
    }
    
    return weekDays[numero]!
}

print(weekDayName(numero: 1))
