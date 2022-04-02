/* assert
 - 특정 조건을 체크하고, 조건이 성립되지 않으면 메시지를 출력하게 할 수 있는 함수
 - assert 함수는 디버깅 모드에서만 동작하고 주로 디버깅 중 조건의 검증을 위하여 사용
*/
import Foundation

var val = 0
assert(val == 0)

val = 2
//assert(val == 0, "the value val is equal to 0") // execution failed error message

/* guard statement
 - 뭔가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정하는 것
 - guard문에 주어진 조건문이 거짓일 때 구문이 실행됨
 * 함수 안에서만 쓸 수 있음
*/
/*
guard 조건 else {
    // 조건이 false이면 else 구문 실행
    return or throw or break 를 통해 이후 코드를 실행하지 않도록 함
 }
*/

func guardTest1(value: Int) {
    guard value == 0 else { return }
    print("hello")
}

guardTest1(value: 2) // guard 문 통과하지 못하여 콘솔에 아무것도 출력 x (else {return} 에서 리턴됨)
guardTest1(value: 0) // hello


/* optional binding 가능 */
// 매개변수 타입을 ? optional 타입으로 변경
func guardTest2(value: Int?) {
    // value 에 값이 들어있으면 optional wrapper 를 벗겨 상수에 할당
    guard let value = value else { return } // optional
    print(value)
}

guardTest2(value: 2)
// guardTest2(value: nil) // error
