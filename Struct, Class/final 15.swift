import UIKit

//상속이 불가능하게 하는 키워드, override를 제한함으로 런타임 성능 향상을 시키고 있다.
final class Friend{
    var name : String
    
    init(name: String) {
        self.name = name
    }
}

//Friend를 final 키워드로 지정해서 상속이 불가능함
class BestFriend : Friend {
    
    override init(name: String) {
        super.init(name: "승기" + name)
    }
}

let myFreind = Friend(name: "현우")
print(myFreind.name)
