import UIKit

// swift가 가진 큰 특징 중 하나
// 값이 있을 수도 있고 없을 수도 있음

var name: String = "" // 빈 문자열을 값으로 가짐

// nil (null) 타입 뒤 "?"
var kind: String? = nil
kind

var x: String?

var optionalName: String? = "Jay" // optional 에도 일반 값 할당 가능
print(optionalName) // "Optional("Jay")" <- wrapping 되어 있는 값은 일반 값과 연산이 불가능. optional binding 사용해야 함

// var requiredName: String = optionalName // error
// optional 값은 다른 값과 다름


// optional binding
// optional wrap을 벗김(optional 해제)

// 명시적 해제(강제 해제) "!"
var number: Int? = 3
print(number) // Optional(3)
print(number!) // 3

// 강제해제 시 nil 값을 해제하는 경우 앱이 강제종료됨

// 묵시적 해제(컴파일러에 의한 자동 해제)
if let result = number { // optional 에서 추출하여 result에 할당
    print(result)
}

// guard문 ??
//func test() {
//    let tempNumber: Int? = 3
//
//    quard let tempResult = tempNumber else {
//        return
//    }
//
//    print(tempResult)
//}

// test()

// guard keyword if와 유사
// guard문에 대해 , false로 통과하면 else문을 실행

// if문으로 optional binding 시 if문 코드블록 내에서만 추출한 값 상태로 사용 가능
// * guard문으로 Optional을 추출하면 guard문 다음에도 사용 가능

// 컴파일러에 의한 자동 해제
// optional 을 비교하면 자동 해제
let value: Int? = 6
if value == 6 {
    print("value가 6입니다.") // 이 문장이 출력됨
} else {
    print("value가 6이 아닙니다")
}

// 묵시적 해제 "!"
//let string = "12"
//var stringToInt: Int? = Int(string)
//print(stringToInt + 1)

let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)
