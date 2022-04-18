//1 task
import Foundation

let numberOfDaysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for (index, days) in numberOfDaysInMonths.enumerated() {
    print("The \(index + 1) month has \(days) days")
}

print("")

let monthsInYear = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

var counter = 0

for (names, days) in zip(monthsInYear, numberOfDaysInMonths) {
    counter += 1
    print("The \(counter) month of the year is \(names) and it has \(days) days ")
}
print("")

var counterForReversing = 0

for (_, _) in zip(monthsInYear, numberOfDaysInMonths) {
    print("The \(counter) month of the year is \(monthsInYear[monthsInYear.count - 1 - counterForReversing]) and it has \(numberOfDaysInMonths[numberOfDaysInMonths.count - 1 - counterForReversing]) days")
    counter -= 1
    counterForReversing += 1
}

print("")

//counting number of days between two dates
let newYear = "2022-01-01"
let myDate = "2022-01-15"
let dateFormatter = DateFormatter()

dateFormatter.dateFormat = "yyyy-MM-dd"

func daysBetween(start: Date, end: Date) -> Int {
    return Calendar.current.dateComponents([.day], from: start, to: end).day!
    }

print("From \(newYear) to \(myDate) have already gone \(daysBetween(start: dateFormatter.date(from: newYear)!, end: dateFormatter.date(from: myDate)!)) days")

print("")

//2 task
var alphabet = "abcdefghijklmnopqrstuvwxyz"
var arr: [String] = []
var i = 0

for letter in alphabet {
    arr.append(String(letter))
    if String(letter) == "z" {
        for updLetter in arr {
            arr[arr.count - 1 - i] = String(updLetter)
            i += 1
        }
    }
}

print("Reversed alphabet looks like this: \(arr)")

print("")

//3 task
var gradeBook = ["Roman Romanenko": 10, "Nazar Nazarenko": 12, "Taras Tarasenko": 9, "Volodymyr Volodenko": 11, "Oleksandr Sashenko": 7, "Pavlo Pavlenko": 4, "Stepan Stepanenko": 12]

gradeBook.updateValue(9, forKey: "Oleksandr Sashenko")
gradeBook.updateValue(8, forKey: "Pavlo Pavlenko")
gradeBook["Petro Petrenko"] = 10
gradeBook["Denys Denysenko"] = 6
gradeBook.removeValue(forKey: "Nazar Nazarenko")
gradeBook.removeValue(forKey: "Stepan Stepanenko")

print("The final grade book is \(gradeBook)")

