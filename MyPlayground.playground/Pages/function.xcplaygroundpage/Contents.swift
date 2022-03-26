import UIKit

func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(a: 5, b: 3)

func hello() -> String {
    return "hello"
}

hello()

func printName() {

}

func greeting(friend: String, me: String = "gunter") {
    print("Hello, \(friend)! I'm \(me)")
}

greeting(friend: "Albert")

/*
 func 함수명(전달인자 레이블: 매개변수명: 매개변수 타입, 전달인자 레이블: 매개변수명: 매개변수 타입...) -> 반환 타입{
    return 반환 값
 }
 */
// 전달인자 레이블을 사용하면 매개변수 역할을 좀 더 정확히 파악 가능, 코드 가독성 도움

func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}

sendMessage(from: "Sootully", to:"Json")

// 전달인자 레이블 사용X, wildcard identifier _ 사용
func sendMessage(_ name: String) -> String {
    return "Hello \(name)"
}

sendMessage("jay")

// 가변 매개변수 (매개변수 데이터타입...) 여러개의 문자열을 넘길 수 있음, 배열을 인자로 받을 수 있다고 생각하면 됨
func sendMessage(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

sendMessage(me: "sootully", friends: "Json", "Albert", "Stella")

// swift는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어
// swift 함수는 1급 객체임. 따라서 함수를 변수, 상수 등에 할당, 매개변수에 전달할 수도 있음
