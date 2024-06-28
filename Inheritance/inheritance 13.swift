import UIKit

class Friend{
    var name: String
    
    //init의 발동 조건 - 메모리에 올라갔을때
    init(_ name: String){
        self.name = name
    }
    
    func sayHi(){
        print("안녕하세요 저는 \(self.name)라고 해요")
    }
}

class BestFriend : Friend{
    //클래스 상속을 받으면 super키워드를 통해 init을 재정의 해줘야 함
    override init(_ name: String) {
        //super로 부모 메소드 사용
        super.init("베프 " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}
//부모 클래스의 Friend의 sayHi()에 접근
let myFriend = Friend("현우")
print(myFriend.sayHi())

//자식 클래스의 BestFriend의 SayHi()에 접근
let myBestFriend = BestFriend("승현")
print(myBestFriend.sayHi())
