import UIKit

//*******Questions******//
// 1. In which year was the first version of the Swift programming language introduced?
print("2014")
print("----------------------")
// End of question 1
// 2. Declare a constant 'pi' of type Double and assign it the value 3.14. Calculate the circumference of a circle with a radius of 7.5 using the formula: circumference = 2 * pi * radius. Print the obtained result.
let pi: Double = 3.14
var radius = 7.5
var circumference = 2 * pi * radius
print(circumference)
print("----------------------")
// End of question 2
// 3. Declare a variable with a value of 98.8°F, convert it to Celsius, and round it to two decimal places. Then, print the result in the following format using a single print statement. [Replace the **** with converted celsius value.]
// Fahrenheit: 98.8 F
// Celsius:    **** C
var far = 98.9
var cel = (far - 32) * 5/9
print("Fahrenheit:", far, "F", "\rcelsius:   ", round(cel * 100)/100.0, "C")
print("----------------------")
// End of question 3
// 4. Write three sentences about yourself using three print statements and display the first two sentences on the first line, and the third sentence on the next line.
print("Hello my name is Jake and I am a computer science major! ", terminator: "")
print("I am really loving this IOS programming class!")
print("This is going to be a great semester!")
print("----------------------")
// End of question 4
// 5. Display the following using a single print statement.
// "Swift is a powerful and intuitive programming language for iOS, iPadOS, macOS, tvOS, and watchOS.
//   Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features   developers love.
//   Swift code is safe by design and produces software that runs lightning-fast."
print("""
Swift is a powerful and intuitive programming language for iOS,
iPadOS, macOS, tvOS, and watchOS.
Writing Swift code is interactive and fun, the syntax is concise
yet expressive, and Swift includes modern features developers
love.
Swift code is safe by design and produces software that runs
lightning-fast.
""")
print("----------------------")
// End of question 5
// 6. Declare a variable named 'number' and assign it a minimum three-digit integer value. Write code to count the number of digits in the number and print the result. For example, if the number is 987654, the output should be: 'The number 987654 has 6 digits.'
var count : Int = 0
func countNum(n: Int)->Int{
    if (n > 0){
        count = count + 1
        return countNum(n: n / 10)
    }
    return count
}
var number = 9834890
print("The number \(number) has", countNum(n: number), "digits")
print("----------------------")
// End of question 6
// 7. Create a variable with value "Welcome to iOS Class". And then print each character separated by ",". Exlcude the spaces.
let phrase = "Welcome to iOS Class"
var num = phrase.count
var index = 0
for char in phrase {
    index = index + 1
    if char != " " && index != num{
        print(char, terminator: ",")
    }
    else if char != " "{
        print(char, terminator: "")
    }
}
print("")
print("----------------------")
// End of question 7





