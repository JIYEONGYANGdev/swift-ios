import Foundation

/*
 클래스 구조체 또는 열거형 인스턴스를 사용하기 위한 준비 과정
 인스턴스의 초기화를 담당 init
 초기값 설정 - 새 인스턴스 사용하기 전에 초기화
*/

/* init 구문 코드블록 -> 인스턴스가 생성되면 호출
init(매개변수: 타입, ...) {
 // 프로퍼티 초기화
 //인스턴스 생성시 필요한 설정을 해주는 코드 작성
}
*/

class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int) {
        self.nickname = "sootully"
        self.age = age
    }
    
    // deinitializer
    deinit {
        print("deinit user")
    }
}

var user = User(nickname: "jay", age: 23)

user.nickname
user.age

var user2 = User(age: 27)

user2.nickname
user2.age

// 사용자 정의 생성자를 이용해 생성자 정의 가능

// initializer 반대역할 deinitializer ("deinit")  *클래스에만 있음
// 인스턴스가 메모리에서 해제되기 직전에 호출, 클래스 인스턴스와 관련하여 원하는 정리 작업 구현
var user3: User? = User(age:23)
user3 = nil // "deinit user" 출력됨

// swift는 인스턴스가 더이상 필요하지 않으면 deinit 호출하고, 메모리에서 인스턴스를 삭제함
