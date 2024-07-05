import UIKit

//대표적인 Any자료형이 print에서 사용(어떤 자료형이든 무한대로 받겠다)
class Animal{
    
}

//자료형을 어떤것이든 사용하겠다의 Any
var someValue : Any = "현우"

someValue = ("그치", "승기")

//someValue의 자료형이 Animal클래스로 변경
print(type(of: someValue))
