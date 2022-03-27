import UIKit
/* 구조체, class 타입 공존
 데이터를 용도에 맞게 표현
프로퍼티, 메소드 구조화된 데이터와 기능을 가질 수 있음
하나의 사용자 정의 데이터타입을 만드는 것
 
struct - 값 타입
class - 참조 타입

struct 구조체 이름 {
    프로퍼티와 메소드 (멤버)
}
 */

// Pascal 표기법
struct User {
    var nickname: String
    var age: Int

    // 메소드 정의
    func information() {
        print("\(nickname) \(age)")
    }
}

// 정의한 구조체 사용 - 인스턴스 생성(메모리에 생성된 실체)
var user = User(nickname: "jay", age: 23) // 생성자 자동생성

// 프로퍼티 접근
user.nickname // "jay"
// 값 변경
user.nickname = "sootully"
user.nickname // "sootully"

// 메소드 호출
user.information()
