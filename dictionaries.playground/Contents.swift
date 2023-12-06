import UIKit

var capitals = ["Arkansas":"Little Rock","Gerogia":"Atlanta"]
print(capitals)

print(capitals.count)

var numbers = [1:"One",2:"Two",3:"Three"]
print(numbers)

numbers[4] = "Four"
print(numbers)

var courses = [44542:"Java", 44560:"Database", 44613:"Data Visualization"]

print("Before changing \(courses)")
courses[44542] = "JavaScript"
print("After changing \(courses)")

print(courses[44542]!)

courses.removeValue(forKey: 44613)
print(courses)

for (key,values) in courses{
    print(key)
}

for (key,values) in courses{
    print(values)
}

for (key,values) in courses{
    print("\(key) : \(values)")
}


