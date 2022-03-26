import UIKit

// Array (같은 타입의 데이터, 순서가 있음)
var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)
numbers.append(2)

// index로 접근
numbers[0]
numbers.insert(4, at:2)
numbers.remove(at: 2)
numbers

// 축약 선언 형태
var names: [String] = []

// Dictionary (key:value)
var dict: Dictionary<String, Array<Int>> = Dictionary<String, Array<Int>>()
var dic: [String: Array<Int>] = ["jay": [1,2]]

// 데이터 추가
// dic["key"] = value
// dic["sootully"] = 3 // error value에 정수 배열 타입 지정해줬기 때문에

dict["sootully"] = [19, 20]
dict

dic.removeValue(forKey: "jay")
dic

// Set (순서 없음, 중복 데이터 불가능)
var set: Set = Set<Int>() // 축약 선언 형태 없음
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)

set.remove(20)
set
