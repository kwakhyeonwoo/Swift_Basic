import UIKit

//이름을 문자열로 받고 문자열로 반환하는 메소드
func myFunction(name: String) -> String{
    return "안녕하세요?! \(name) 입니다"
}

func myFunctionSecond(with name: String) -> String{
    return "안녕하세요?! \(name) 입니다"
}

//parameter를 사용하고 싶지 않으면 _ 사용
func myFunctionThird(_ name: String) -> String{
    return "안녕하세요?! \(name) 입니다"
}

//현우입니다
print(myFunction(name: "현우"))
//사람입니다
print(myFunctionSecond(with: "사람"))
//인간입니다
print(myFunctionThird("인간"))
