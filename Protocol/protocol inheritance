import UIKit

//Naming protocol에서 name, getName()을 선언
protocol Naming{
    var name : String { get set }
    func getName() -> String
}

//Aging protocol에서 age선언
protocol Aging{
    var age : Int { get set }
}

//UserNotifiable protocol에 Naming, Aging protocol 상속 시키는 것
//UserNotifiable에는 name, getName(), age변수가 들어가기로 약속
protocol UserNotifiable : Naming, Aging {
    
}

//상속된 UserNotifiable을 class, struct에 상속 가능
class MyBestFriend : UserNotifiable {
    var name: String = ""
    
    func getName() -> String {
        <#code#>
    }
    
    var age: Int = 0
    
    
}
struct MyFriend : UserNotifiable {
    var name: String
    
    func getName() -> String {
        <#code#>
    }
    
    var age: Int
    
}
