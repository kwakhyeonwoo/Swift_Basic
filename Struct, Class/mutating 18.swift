import UIKit

//class는 참조(주소로 확인함)
class Friend{
    var name : String
    
    func changeName(newName: String) {
        self.name = newName
        
    }
    init(name: String) {
        self.name = name
    }
}

var myFriend = Friend(name: "승기")
myFriend.name

//struct는
struct BestFriend{
    var name : String
    
    //struct에서 값을 변경할려고 하면 안되는 이유가 struct는 값이기 때문
    mutating func changeName(newName: String) {
        self.name = newName
//        print("newName: \(newName)")
    }
//struct는 생성자 init()을 작성하지 않아도 자동으로 생성이 된다. class에서만 init작성
//    init(name: String) {
//        self.name = name
//    }
}
var myBestFriend = BestFriend(name: "현우")
myBestFriend.name

//struct에서 값을 변경하기 위해서는 mutating을 사용해서 변경해야 함
myBestFriend.changeName(newName: "현이")
