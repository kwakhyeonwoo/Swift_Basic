import UIKit

let somePoint = (x: 3, y: 0)

if case (x: 2, y: 0) = somePoint{
    print("if case안에 들어옴")
} else {
    print("if case밖에 들어감")
}

func checkSomePoint(someValue : (x: Int, y: Int)){
    guard case (x: 2, y: 0) = somePoint else{
        print("guard case 밖에 들어가있음")
        return
    }
    print("guard case 안에 있음")
}

checkSomePoint(someValue: somePoint)

switch somePoint {
case (x: 0, y : 0):
    print("중심")
case (_, y: 0):
    print("x축")
case (x:0, _):
    print("y축")
case (x: -2...2, y: -2...2):
    print("상자 안에 있네요")
default:
    print("밖에 있네요")
}
