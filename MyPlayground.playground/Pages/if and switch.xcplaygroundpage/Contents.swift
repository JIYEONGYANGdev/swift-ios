import UIKit

/*
 if 조건식 {
  실행할 구문
 }
 */

let age = 20

if age < 19 {
    print("under qualified age")
}

if age < 19 {
    print("under qualified age")
} else {
    print("available age")
}

let pet = "cat"

if pet == "dog" {
    print("bow-wow")
} else if pet == "cat" {
    print("meow")
} else {
    print("can't find specific pet")
}

// switch statement

let color = "green"

switch color {
case "blue" :
    print("sky")

case "green" :
    print("tree")
    
case "yellow":
    print("lemon")
    
default:
    print("we don't have the color option")
}

// 범위 연산자(...)
let temperature = 30

switch temperature {
case -20...9:
    print("winter is here")
    
case 10...14:
    print("autumn is here")
    
case 15...25:
    print("spring is here")

case 26...35:
    print("summer is here")
    
default:
    print("??")
}
