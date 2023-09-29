import UIKit

import UIKit

//პირველი

var numbers: [Int] = [1, 3, 5, 7, 9, 11, 13]

if numbers.count >= 2 {
    let firstNum = numbers[0]
    numbers[0] = numbers[numbers.count-1]
    numbers[numbers.count-1] = firstNum
}

print(numbers, "\n")

//მეორე

var halfArray = [1, 34, 52, 123, 512, 21, 5, 861, 9, 11, 22]

if (halfArray.count / 2).isMultiple(of: 2) {
    halfArray.removeLast(halfArray.count/2)
} else {
    halfArray.removeLast(halfArray.count/2 + 1)
}

print(halfArray, "\n")

//მესამე

var oneToTen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var oddNumbers: [Int] = []
var evenNumbers: [Int] = []

for i in 0...oneToTen.count - 1 {
    if oneToTen[i].isMultiple(of: 2){
        evenNumbers.append(oneToTen[i])
    } else {
        oddNumbers.append(oneToTen[i])
    }
}

print(oddNumbers, " ", evenNumbers, "\n")

//მეოთხე

var decimals: [Double] = [1.3, 4.5, 12.1, 456.3, 23.0, 987.56, 7.7, 10001.01]
var maxNumber = decimals[0]
for i in 1...decimals.count - 1 {
    if decimals[i] > maxNumber {
        maxNumber = decimals[i]
    }
}

print(maxNumber, "\n")

//მეხუთე

var firstHalf = [8, 4, 9, 9, 0, 2]
var secondHalf = [1, 0, 9, 2, 3, 7, 0, 1]
let counter = firstHalf.count + secondHalf.count

firstHalf.append(contentsOf: secondHalf)

for i in 0..<counter - 1 {
    var minIndex = i
    for j in (i+1)..<counter {
        if firstHalf[j] < firstHalf[minIndex]{
            minIndex = j
        }
    }
    
    if i != minIndex {
        let n = firstHalf[i]
        firstHalf[i] = firstHalf[minIndex]
        firstHalf[minIndex] = n
    }
}

print(firstHalf, "\n")

// მეექვსე

var word = "Television"
var setOfWord = Set<Character>()

for char in word {
    setOfWord.insert(char)
}

if word.count > setOfWord.count {
    print("At least one character is used twice in this word", "\n")
} else {
    print("Every character is unique is this word", "\n")
}

// მეშვიდე

var firstSet: Set = [1, 3, 5, 6, 8, 12, 45, 28, 50]
var secondSet: Set = [1, 3, 6, 12, 26, 28, 55, 34]

print(firstSet.union(secondSet))
print(firstSet.intersection(secondSet))
print(firstSet.symmetricDifference(secondSet), "\n")

//მერვე

var cars: Set = ["BMW", "Mercedes", "Audi", "Wolksvagen", "Skoda", "Lexus", "Toyota", "Ford", "Chevrolet"]
var germanCars: Set = ["BMW", "Mercedes", "Audi", "Wolksvagen", "Skoda"]
var diff = cars.intersection(germanCars)

if diff == germanCars {
    print("Second set is subset of first one", "\n")
} else {
    print("Second set is not subset of first one", "\n")
}

// მეცხრე

var names: [String] = ["Irakli", "Marika", "Qetevani", "Tamari", "Dato", "Lasha", "Vaxo"]
var setOfNames: Set<String> = []

for n in 0..<names.count {
    setOfNames.insert(names[n])
}

if setOfNames.count == names.count {
    print("All elements of the array are unique", "\n")
} else {
    print("An array contains similar elements", "\n")
}

// მეათე

var movies: [String:Double] = ["Jariskacis mama" : 9.3,
                               "Udzinarta mze" : 9.1,
                               "Data tutashxia" : 10.0,
                               "Kukaracha" : 9.9,
                               "Udiplomo sasidzo" : 8.9]
var total = 0.0

for i in movies.values {
    total += Double(i)
}

var ans = total/Double(movies.count)

print("The average rating of Georgian movies is", ans)
