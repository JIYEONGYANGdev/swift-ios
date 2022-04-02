/* 에러 처리: 프로그램 내에서 에러가 발생한 상황에 대해 대응하고 이를 복구하는 과정
 swift에서는 런타임에서 에러가 발생한 경우 이를 처리하기 위한 발생(throwing), 감지(catching), 전파(propagating), 조작(manipulating) 을 지원하는 1급 클래스를 제공
 */

/* swift에서 error는 에러 프로토콜을 따르는 타입의 값으로 표현됨
 요구사항이 없는 빈 프로토콜이나 에러를 표현하기 위해서는 이 프로토콜을 채택해야 함
*/
import Foundation

enum PhoneError: Error { // :에러프로토콜 채택
    case unknown
    case batteryLow(batteryLevel: Int) // 연관값도 선언
}

// throw 구문으로 에러 발생시킬 수 있음
//throw PhoneError.batteryLow(batteryLevel: 20)

/*던져진 에러를 처리하는 코드도 작성해야 함
 swift에서 error 처리 방법 4가지
 1. 함수에서 발생한 오류를 해당 함수를 호출한 함수에 전파
 2. do catch 구문
 3. optional 값으로 처리
 4. 오류가 발생하지 않을 것이라 확신하는 방법
*/

func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
    guard batteryLevel != -1 else { throw PhoneError.unknown }
    guard batteryLevel > 20 else { throw PhoneError.batteryLow(batteryLevel: 20)}
    
    return "battery level is okay now"
} // throwing 함수, 에러를 전파할 수 있음
// 반환값이 있다면 뒤에 반환값 작성


/* do catch statement
 do {
   try 오류 발생 가능 코드
 } catch 오류 패턴 {
   처리 코드
 }
 */

do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
    print("⚠️ unknown error interrupted ! ")
} catch PhoneError.batteryLow(let batteryLevel) {
    print("battery is low: \(batteryLevel)%")
} catch {
    print("그 외 오류 발생: \(error)")
}

// try?
// 오류가 발생하지 않을 것이라 확신될 때
let status = try? checkPhoneBatteryStatus(batteryLevel: 30) // optional 값으로 출력
print(status) // Optional("battery level is okay now")

//let status2 = try! checkPhoneBatteryStatus(batteryLevel: -1)
//print(status2)
// 에러 발생하여 앱이 강제 종료 됨: 'try!' expression unexpectedly raised an error
