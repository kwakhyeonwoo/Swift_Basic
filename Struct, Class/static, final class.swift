import UIKit

//기존 func는 클래스의 인스턴스를 생성해서 접근 가능.
//나머지는 클래스 자체에서 접근 가능
//static, final class랑 비슷한 의미 - 둘 다 상속은 안됨
class MyClass{
    
    //인스턴스 메소드
    func saySomething(){
        print("안녕")
    }
    
    //상속이 가능
    class func sayHi(){
        print("안녕하세요")
    }
    
    static func sayHello(){
        print("안녕하시구리")
    }
    
    final class func sayHHHH(){
        print("안녕하다구요")
    }
}

class mySubClass : MyClass {
    
    //상속이 가능한 saySomething, sayHi만 override가능
    override class func sayHi() {
        super.sayHello()
        print("헬롱구리")
    }
}

let myclass = MyClass()
myclass.saySomething()

mySubClass.sayHi()
