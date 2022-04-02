/* protocol 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진을 정의
구조체 클래스 열거형은 프로토콜을 채택하여 특정 기능을 실행하는 프로토콜을 요구사항을 실제 구현할 수 있음
조건을 모두 충족하면 채택한 프로토콜을 준수한다고 말할 수 있음
*/
import Foundation

// 프로토콜 정의하는 방법
/*
 protocol 이름 {
 
 }
 */

protocol SomeProtocol {
    
}

protocol SomeProtocol2 {
    
}

// 구조체에 프로토콜 채택하는 방법, 여러 개의 프로토콜을 동시에 채택 가능(,)
struct SomeStructure: SomeProtocol, SomeProtocol2 {
    
}

/* 클래스에 프로토콜을 채택할 때엔 상속받은 super class의 이름을 (:) 뒤 제일 먼저 기입 후 프로토콜을 나열
 class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol{
 
 }
 */

// 요구사항 청사진을 어떻게 정의하는지
// 프로퍼티 요구사항 (저장/연산 프로퍼티인지는 X, 이름&타입만 지정, readonly 인지 getter, setter 와 함께 정의)
// 프로토콜 내 프로퍼티 요구사항을 정의할 때
protocol FirstProtocol {
    var name: Int { get set } // 변수로 요구(var keyword으로 정의)
    var age: Int { get } // read only
}

// 타입 프로퍼티 요구하려면 static keyword
protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

// 구조체에 프로토콜 채택하는 방법
protocol FullyNames {
    var fullName: String { get set } // 읽고 쓰기 가능
    
    func printFullName() // 2. 메소드 요구사항 정의
}

struct Person: FullyNames {
    // 비어 있다면 프로퍼티 요구사항을 준수하지 않아 에러 (protocol requires property 'fullName' with type 'String'; do you want to add a stub? )
    var fullName: String // 준수한다고 볼 수 있음
    
    func printFullname() {
        // 2. 여기서 정의
        print(fullName)
    }
}

// 프로토콜은 자신을 채택한 타입에 메소드를 요구사항으로 정의할 수 있음
// instance, type method 모두 가능
protocol SomeProtocol3 {
    func someTypeMethod() // 매개변수 default 값은 지정할 수 없음
}

// 생성자 요구사항도 정의 가능
protocol SomeProtocol4{
    init(someParameter: Int) // 매개변수와 타입만 정의하면 ok
}

protocol SomeProtocol5 {
    init()
}

// 클래스에서 생성자 요구사항 준수하려면 required identifier(식별자) 필요
class SomeClass: SomeProtocol5 {
    required init() {
        
    }
}

