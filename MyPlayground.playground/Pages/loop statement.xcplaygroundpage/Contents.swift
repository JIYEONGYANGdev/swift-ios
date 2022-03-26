import UIKit

/*
 for 루프상수 in 순회대상 {
    // 실행할 구문
 }
 */

// set, dictionary, ..

for i in 1...4 {
    print(i)
}

let array = [1, 2, 3, 4, 5]

for i in array {
    print(i*2)
}

// while statement
/*
 while 조건식(true or false로 귀결되는) {
 // 실행할 구문
 }
 */

var number = 5

while number < 10 {
    number+=1
}

number

// repeat while statement

/*
 repeat {
  // 실행할 구문
 } while 조건식
 */

var x = 6

repeat {
    x+=2
} while x < 5
      
// 조건이 안맞아도 1번은 실행함!
            
print(x) // 8
