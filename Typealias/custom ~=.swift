import UIKit

let statusCode = 500

//Stack Overflow 부분 인용
func isValidEmail(_ email: String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
}

//custom 해보기
func ~= (pattern : NSPredicate, value: String) -> Bool{
    return pattern.evaluate(with: value)
}

let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)

if emailPred ~= "hyunwoo@naver.com"{
    print("이메일 형식입니다")
} else{
    print("이메일 형식이 아닙니다")
}

switch "hyunwoo" {
case emailPred:
    print("이메일 형식이네요")
default:
    print("이메일 형식이 아니라고 합니다")
}

let someValue = 30

if "30" ~= someValue {
    print("30입니다")
} else {
    print("30이 아닙니다 ")
}

//조건 - if, guard, switch에서 많이 사용
if(400..<500) ~= statusCode{
    print("들어옴")
} else{
    print("벗어남")
}

//패턴 매칭 오버로딩
func ~= (pattern : String, value: Int) -> Bool{
    return pattern == "\(value)"
}

if "30" ~= 30 {
    print("30입니다")
}

let someValue = 30

//someValue가 value부분에 해당이 됨
//첫번째로 들어오는 "30"이 pattern부분에 해당
//func ~=의 확장 부분
switch someValue {
case "30":
    print("30입니다 - switch")
default:
    print("30이 아닙니다 - switch")
}

if case "30" = someValue {
    print("30맞습니다 - if case")
} else{
    print("30아닙니다 - if case")
}

switch statusCode {
case (400...500):
    print("들어왔습니다")
default:break
}

if case (400...500) = statusCode {
    print("if case에 들어옴")
}

func doSomeCheck(status : Int){
    guard (400...500) ~= status else{
        print("안들어왔어요")
        return
    }
    print("들어왔어요")
}

doSomeCheck(status: 405)
