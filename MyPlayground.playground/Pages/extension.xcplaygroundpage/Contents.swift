/* 기존의 클래스, 구조체, 열거형, 프로토콜에 새로운 기능을 추가하는 기능
 익스텐션이 타입에 추가할 수 있는 기능
 - 연산 타입 프로퍼티, 연산 instance 프로퍼이
 - 타입 메소드, instance 메소드
 - initialiser
 - sub script
 - 중첩 타입
 - 특정 프로토콜을 준수할 수 있도록 기능 추가
 * 새로운 기능 추가할 수 있으나 기존 존재하는 기능을 override 할 수는 없음
 */
import Foundation

/*
 extension SomeType {
  // 추가 기능 정의
 }
 */

// 연산 프로퍼티를 추가하여 기능 확장하는 예
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
}

// Int 타입의 값이 짝수/홀수 인지 연산하는 기능이 포함됨

var number = 3
number.isOdd // true
number.isEven // false

// * 연산 프로퍼티는 추가 가능, 저장 프로퍼티는 추가 불가능
//타입에 정의되어 있는 프로퍼티의 프로퍼티 감시자를 추가할 수 없음

extension String {
    func convertToInt() -> Int? {
        return Int(self) // 문자열을 Int 타입으로 변환하여 리턴하도록
    }
}

var string = "0"
string.convertToInt() // 0

