import UIKit

//class func, static func - 메모리에 올리지 않고 Friend에 직접 접근을 하기 위함
//이때 static func는 final키워드가 앞에 있는 개념으로 생각해야 함. 따라서 상속을 했을때 재정의(override)가 불가능함
class Friend {
    func sayHi() {
        print("안녕하시지")
    }
    
    class func sayHello() {
        print("hello네요")
    }
    
    static func sayBye(){
        print("bye에요")
    }
}

class BestFriend : Friend {
    //class func는 상속 받았을 때 override로 재정의가 가능
    class override func sayHello() {
        super.sayHello()
        print("sayHello입니다")
    }
    
    //static func는 override가 불가능
    func sayBye(){
        print("상속 당함")
    }
}

let myFriend = Friend()
myFriend.sayHi()//안녕하시지
Friend.sayHello()//hello네요
Friend.sayBye()//bye에요

BestFriend.sayBye()//bye에요
BestFriend.sayHello()//super키워드를 통해 "hello네요" 출력 되고 "sayHello입니다" 출력
