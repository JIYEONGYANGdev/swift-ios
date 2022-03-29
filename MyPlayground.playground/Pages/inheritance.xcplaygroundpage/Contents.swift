import Foundation
/* 17. 상속: 클래스가 다른 클래스로부터 프로퍼티나 메소드를 상속받는 것
 super class, sub class
 상속은 클래스만의 특징
 부모클래스로부터 물려받은 메소드, 프로퍼티, 서브스크립트를 접근, 호출 가능
 오버라이딩을 통해 물려받은 메소드, 프로퍼티, 서브스크립트를 자신만의 내용으로 재정의 가능
 상속받은 프로퍼티 값이 변경되면 알려주는 프로퍼티 감시자도 구현
 부모 연산/저장 프로퍼티 등 상관없이 자식 클래스에서 감시자 구현 가능
*/
// 상속받지 않고 생성한 클래스, base class

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("speaker on")
    }
}

/*
 class 클래스 이름: 부모 클래스 이름 {
  // 하위 클래스 정의
 
 }
 */

// class Vehicle을 상속받는
class Bicycle: Vehicle {
    var hasBasket = false
}
// vehicle 클래스에서 정의한 모든 프로퍼티, 메소드를 모두 상속받음, 사용 가능

var bicycle = Bicycle() // 인스턴스 생성

bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed // 참조값 변경됨, 0.0 -> 15.0

/* over riding
 super class 에서 정의된 것을 sub class에서 자신만의 기능으로 변경해서 쓰는 것
 override keyword
 동일한 이름의 프로퍼티, 메소드 컴파일러에서 에러 뱉음
*/

class Train: Vehicle {
    override func makeNoise() {
        super.makeNoise() // 먼저 superclass 에 정의된 makeNoise 메소드가 호출됨
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()
// **super class의 메소드 등의 내용을 sub class 에서 재정의했어도 super class의 오리지날 메소드를 활용하고 싶으면 super. 라는 키워드로 사용 가능

/* 프로퍼티 재정의(override)
 getter, setter
 */

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description) // traveling at 30.0 miles per hour in gear 2

/* sub class 에서 super class 의 프로퍼티를 재정의하려면 프로퍼티 이름/ 타입 등이 일치해야 함
 read & write
 상속된 프로퍼티에 override 하여 observer 설정 가능
*/

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)") // AutomaticCar: traveling at 35.0 miles per hour in gear 4

// 상수 저장 프로퍼티나 read only 프로퍼티는 override 불가
// override 방지 - final keyword
/*
final class Vehicle { // sub class 만들 수 없음
    final var currentSpeed = 0.0 // currentSpeed 오버라이드 불가
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("speaker on")
    }
}
*/
