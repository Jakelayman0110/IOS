import UIKit

var players: Set<String> = ["David Warner", "Virat Kohli", "Kane Williamson", "Steve Smith"]

print(players.count)

print(players)

print(players.contains("Steve Smith"))

players.insert("Maxwell")
print(players)

players.remove("David Warner")
print(players)

var primeNumbers: Set<Int> = [2, 3, 5, 7, 11]
var numberList: Set<Int> = [1, 2, 5, 9]
var unionSet: Set<Int> = primeNumbers.union(numberList)
print(unionSet)

var intersectionSet: Set<Int> = primeNumbers.intersection(numberList)
print(intersectionSet)

var subtractionSet: Set<Int> = primeNumbers.subtracting(numberList)
print(subtractionSet)

var symmDiffSet: Set<Int> = primeNumbers.symmetricDifference(numberList)
print(symmDiffSet)

print(primeNumbers.isSubset(of: numberList))
