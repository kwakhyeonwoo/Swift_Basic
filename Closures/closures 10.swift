import UIKit

//String 반환하는 클로저
let myName : String = {
    return "현우"
}()

print(myName)

//클로저 정의 문법
//String 값을 받아서 ->로 String을 반환한다.
let myRealName : (String) -> String = {(name: String) -> String in
    return "개발중인 \(name)"
}

print(myRealName("현우"))

//String으로 받아서 return 값이 없다.(Void로 처리)
let myRealNameLogic : (String) -> Void = {(name: String) in
    print("개발하고 있는 \(name)")
}

myRealNameLogic("현우")
