import UIKit

class Cat{
    
}

class Dog{
    
}

let myCat = Cat()
let myDog = Dog()

//자료형 체크를 하기 위해서 is를 해서 체크하면 됨
if myCat is Cat {
    print("고양이 맞아요")
}

//guard는 if의 반대 개념
//guard는 메소드 안에서만 사용 가능
//따라서 else면 "고양이가 아니에요" 출력이 되면서 아니다의 기준을 먼저 확인
func CheckCatOrDog(){
    guard myCat is Cat else {
        print("고양이가 아니에요")
        return
    }
    print("고양이가 맞아요 22")
}

CheckCatOrDog()

if case is Cat = myCat{
    print("고양이 맞아요 33")
}
