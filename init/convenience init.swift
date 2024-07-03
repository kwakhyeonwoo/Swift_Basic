import UIKit

//convenience init - init의 프로퍼티가 일부만 존재할 경우 에러가 나지 않게 예약해둔 보조 생성자
class Friend {
    var name : String
    var age : Int
    
    init(_ name: String) {
        self.name = name
        self.age = 20
    }
    
    //추가 생성자
    //name만 init안 매개변수로 들어가 있는건 init생성자에 (_ name)으로 name만 들어가 있어서
    //age는 매개변수로 선언하지 않아서 self.age로 접근이 가능
    convenience init(_ name : String, _ age : Int) {
        self.init(name)
        self.age = age
    }
}

let myFriend = Friend("현우", 24)
myFriend.age

