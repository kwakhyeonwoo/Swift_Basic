import UIKit

//튜플을 메소드로서의 접근
//반환의 값으로 튜플을 가질 수 있음
func someFunction() -> (first: String, second: String){
    return ("현우", "승기")
}

//새 상수를 생성해서 메소드를 넣고 접근
let name = someFunction()

name.first
