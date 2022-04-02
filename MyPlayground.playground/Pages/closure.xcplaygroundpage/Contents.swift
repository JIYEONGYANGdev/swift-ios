/* 클로저
 - 코드에서 전달하거나 사용할 수 있는 독립 기능 block, 일급 객체 역할 할 수 있음
 - 1급 객체란? 전달 인자로 보낼 수 있고, 변수/상수 등으로 저장하거나 전달할 수 있고, 함수의 반환 값이 될 수도 있음
 */
// named closure와 unnamed closure 가 있으나 보통 이름이 없는 unnamed 를 지칭
/*
 { (매개변수) -> 리턴 타입 in // head in
    실행 구문 // closure body
}
 */
import Foundation

// 클로저는 익명이긴 하지만 함수, swift에서 일급 객체이므로 함수나 변수에 클로저를 대입할 수 있음
let hello = { () -> () in
    print("hello")
}

hello() // hello

// parameter type 과 return type 이 있는 클로저
let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}
// * 주의할 점 매개변수임, 전달인지 레이블이 아님
// 일반 함수처럼 호출 시 전달인자 레이블, parameter 값을 쓰면 에러
//hello2(name: "Jay") <- 잘못된 쓰임


// 함수의 parameter 타입으로 클로저를 전달할 수 있음(일급 객체이기 때문에)
func doSomething(closure: () -> ()) {
    closure()
}

doSomething(closure: { () -> () in
    print("hello again guys")
})

// 함수의 반환 타입을 클로저로, 즉 클로저를 반환하는 함수 만들 수 있음
func doSomething2() -> () -> () {
    return { () -> () in
        print("do something!")
    }
}

doSomething2()()

// 클로저가 길어진다든지 할 때 가독성이 좋게 쓰는 방법
// 후행 클로저?
doSomething() { // 34번째 줄 함수를 읽기 쉽게
    // 바로 클로저 정의 가능
    print("be ambitious")
}

// 다중 후행 클로저
func domSomething2(success: () -> (), fail: () -> ()) {
    
}

doSomething2{
    code
} fail: {
    code
}

// 문법을 최적화
func doSomething3(closure: (Int, Int, Int) -> Int) {
    closure(1,2,3)
}

doSomething3(closure: { (a,b,c) in
    return a+b+c
})

// 약식 이름 인수(매개변수 이름 대신)
doSomething3(closure: {
    return $0+$1+$2
})

// 단일 return문만 남는다면 생략 가능
doSomething3() {
    $0+$1+$2
}


// 단 하나의 클로저만 매개변수로 받는 경우, 소괄호도 생략 가능
doSomething3 {
    $0+$1+$2
}

// + escape closure,
// class instance의 프로퍼티로 closure를 할당 시 closure와 인스턴스 사이 강한 순환참조?가 생겨 memory leak 발생 가능성 있음
