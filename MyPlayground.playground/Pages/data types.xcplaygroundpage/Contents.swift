import Foundation

// swift safe type
//for i in 0...99 {
//    i
//}

// data type
// Int (64bit)
var someInt: Int = -100
someInt = 100
// someInt = 1.1 // error

// UInt (unsigned, 부호가 없는 64bit 정수)
var someUInt: UInt = 200
// someUInt = -200 // error

// Float
var someFloat: Float = 1.1
someFloat = 1
print(someFloat) // 1.0

// Double (부동소수점)
var someDouble: Double = 1.1
someDouble = 1 // 1.0

// Bool
var someBool: Bool = true
someBool = false

// Character
var someCharacter: Character = "A"
someCharacter = "👍🏽"
//someCharacter = "abcdef" // error

// String
var someString: String = "Hello world"

// type infer
var number = 10

