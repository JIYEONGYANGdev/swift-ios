/* 연관성 있는 값을 모아둔 것*/
// declare by 'enum' keyword
import Foundation

enum CompassPoint {
    case north
    case south
    case east
    case west
    // case north, south, east, west // 한 줄로 나열할 수도 있음
}

// enum 으로 열거형 선언 시 하나의 새로운 타입처럼 사용할 수 있으므로 대문자로 변수명을 만든다
var direction = CompassPoint.east
direction = .west // type infer를 통해 가능

switch direction {
case .north:
    print("north")
    
case .south:
    print("south")
    
case .east:
    print("east")
    
case .west:
    print("west")
}

// west

/* switch 구문으로 변수의 열거형 항목이 어떤 항목인지 비교할 수 있고,
 열거형의 각 항목은 자체로도 값이지만, 항목의 원시값을 가지도록 할 수도 있음
 특정 타입으로 지정된 값을 가질 수 있다는 의미
*/
// 특정 타입을 원시 값으로 가지도록 하는 방법
enum CompassPointNew: String {
    case north = "북" // 문자열 값으로 초기화
    case south = "남"
    case east = "동"
    case west = "서"
}

var direction2 = CompassPointNew.east
direction2 = .west // type infer를 통해 가능

switch direction2 {
case .north:
    print(direction2.rawValue)
    
case .south:
    print(direction2.rawValue)
    
case .east:
    print(direction2.rawValue)
    
case .west:
    print(direction2.rawValue)
} // direction2가 west니까 원시값 "서"가 출력됨


// 원시값을 가지고 열거형을 반환하게 만들 수도 있음
// 매개변수로 원시값을 넘겨주면 됨
let direction3 = CompassPointNew(rawValue: "남") // south

// direction3의 CompassPointNew 열거형 항목이 'south'로 들어가 있는 것을 확인 가능


/* 연관값
 열거형 내 항목이 자신과 연관된 값을 가질 수 있음
 각 항목 옆에 소괄호를 묶어 표현
 모든 항목이 연관값을 가질 필요 없음
*/

enum PhoneError {
    case unknown
    case batteryLow(String) // 항목 소괄호에 연관값 타입
}

// let 키워드로 상수 선언
let error = PhoneError.batteryLow("battery is low🔋") // 연관값을 초기화 가능

// 연관값을 추출 (if 또는 switch 문)
switch error {
case .batteryLow(let message):
    print(message)

case .unknown:
    print("알 수 없는 에러입니다.)"
}
