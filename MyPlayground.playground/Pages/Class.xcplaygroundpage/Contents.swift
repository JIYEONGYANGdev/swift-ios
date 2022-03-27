import UIKit

/*
class 클래스이름 {
    프로퍼티와 메소드
}
 */

// Pascal
class Dog {
    var name: String = "" // 초기화
    var age: Int = 0 // 초기화

    // 생성자(constructor) 로 초기화
    init() {
        
    }
    
    func introduce() {
        print("name \(name) age \(age)")
    }
}

// 클래스 인스턴스 생성
var dog = Dog()

// 프로퍼티 접근 및 값 변경
dog.name = "Mani"
dog.age = 10
dog.name
dog.age

// 메소드 호출
dog.introduce() // name Mani age 10
