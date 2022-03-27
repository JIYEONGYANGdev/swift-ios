import Foundation
// 프로퍼티란 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻함
// 저장 프로퍼티(인스턴스 내 변수 또는 상수), 연산 프로퍼티(특정 연산을 실행하는 결과값), 타입 프로퍼티(특정 타입에서 사용되는 프로퍼티)

// 1. 저장 프로퍼티
// 프로퍼티를 사용하는 간단한 방법, 변수나 상수로 선언된 클래스나 구조체의 일부분으로 저장됨
struct Dog {
    var name: String
    let gender: String
}

var dog = Dog(name: "August", gender: "male")
print(dog)

dog.name = "Deshuk"
//dog.gender = "female" // 상수로 선언되어(let keyword) 변경 불가

let dog2 = Dog(name: "August", gender: "male")
// dog2.name = "Deshuk" // 변경 불가. 구조체를 let keyword로 선언 - 내부 프로퍼티도 상수로 선언된 것임

// 클래스는 참조타입이라 상수로 선언해도 변수로 선언한 프로퍼티의 값을 변환 가능
class Cat {
    var name: String
    let gender: String

    // 인스턴스 생성될 때 프로퍼티가 초기값 저장하도록
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

// 상수 cat 선언
let cat = Cat(name: "Garfield", gender: "male")
cat.name = "Karl" // 변경 가능
print(cat.name)
// but gender 는 변경 불가(상수로 선언)

// 2. 연산 프로퍼티
// get, set 를 사용해서 다른 프로퍼티를 직접적으로 접근할 수 있음
struct Stock {
    var averagePrice: Int
    var quantity: Int
    
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        // 새로운 값을 받아서 평균단가을 업데이트하도록 하는 setter
        set(newPrice) {
            averagePrice = newPrice / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice // 6900

stock.purchasePrice = 3000 // 매입가 변경
stock.averagePrice // 1000, 평균단가 변경됨

/*
* 인스턴스 내외부의 값을 연산해서 적절한 값을 반환하는 접근자 역할, 내부의 프로퍼티를 간접적으로 설정하는 설정자 역할
* 읽기전용 프로퍼티로 만들 수도. 값을 변경할 수 없게끔
* 매개변수 이름 설정하지 않으면 디폴트가 newValue
*/

// 3. 프로퍼티 Observer
/*
 값 변화 관찰 반영
새로운 값이 기존 값이 같아도 호출됨
프로퍼티가 set 될 때마다 호출
저장 프로퍼티, overrided 된 저장 계산 프로퍼티에서만 가능

 property observer -> reset, didset 2가지
 reset 값 저장되기 직전 호출, 새로운 값 상수 매개변수로 전달(*default - newValue)
 didset 값 저장된 직후 호출, 프로퍼티 기본값이 상수 매개변수로 전달(*default - "oldValue")
*/

class Account {
    var credit: Int = 0 {
        // 소괄호 이름 지정
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000

// 4. 타입 프로퍼티
/*
 인스턴스 생성 없이 객체 내 프로퍼티에 접근 가능하게 하는 것
프로퍼티 타입 자체랑 연결하는 것을 말함
 저장, 연산 프로퍼티에서만 사용 가능
 static keyword
 */

struct SomeStructure {
    static var storedTypeProperty = "some value" // 스토어
    
    static var computedTypeProperty: Int { // computed
        return 1
    }
}

SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
// 변수에 클래스를 할당하여 인스턴스를 생성하지 않아도 프로퍼티 접근 가능
