/* optional chaining
 - optional에 속해 있는 nil일지도 모르는 property, method, sub scription 등을 가져오거나 호출할 때 사용할 수 있는 일련의 과정
 */
//nil 이면 nil 반환

import Foundation

struct Developer {
    let name: String
}

struct Company {
    let name: String
    var developer: Developer? // optional type
}

var company = Company(name: "MOREVISION", developer: nil)
print(company.developer) // nil

var developer = Developer(name: "JayYang")
var newCompany = Company(name: "MOREVISION", developer: developer)
print(newCompany.developer) // optional에 감싸져 나옴

//print(newCompany.developer.name)
// error: hain the optional using '?' to access member 'name'
// name 프로퍼티에 접근하기 전에 developer 의 optional을 unwrapping (!)

print(newCompany.developer?.name) // optional 감싸진 값 출력

print(newCompany.developer!.name) // optional binding으로 값 접근 가능 // JayYang
