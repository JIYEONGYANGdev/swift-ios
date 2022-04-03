/* 고차함수란 다른 함수를 전달 인자로 받거나 함수의 실행 결과로 함수를 반환하는 함수 swift에서 제공하는 고차함수는 map, filter, reduce로 모두 collection type
 */
import Foundation

// map 컨테이너 내부 데이터를 변형하여 새로운 컨테이너 생성
let numbers = [0, 1, 2, 3]
let mapArray = numbers.map{ (number) -> Int in
    return number * 2
}
print("mapped result is\(mapArray)") // [0, 2, 4, 6]

// filter 컨테이너 내부 값을 걸러서 새로운 컨테이너로 추출
let intArray = [10, 5, 20, 13, 4]
let filterArray = intArray.filter{ $0 > 5 }
print("filtered Result is \(filterArray)") // [10, 20, 13]
// 클로저 간결화된 형식으로 씀

// reduce 컨테이너 내부 요소를 하나로 통합
let someArray = [1, 2, 3, 4, 5]
// 형식: 두개의 인자를 받음, reduce(initial value) { (result: accumualated value, element) closure ~ }

let reduceResult = someArray.reduce(0) {
    (result: Int, element: Int) -> Int in
    print("\(result) + \(element)")
    return result + element
}

print("reduced result is \(reduceResult)") // 15
