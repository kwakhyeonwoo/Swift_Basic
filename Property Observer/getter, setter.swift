import UIKit

class Friend {
    var name : String
    var age : Int
    
    var detailInfo : String = ""
    
    var info : String {
        //데이터를 가져올때 getter를 통해 가공해서 가져올 수 있음
        get {
            return "내 친구 \(name)의 나이는: \(age)"
        }
        //내가 설정하는 것. 설정한 값들은 newValue에 값이 들어가게 됨
        set{
            detailInfo = "detailInfo에서 설정된 값:" + newValue
        }
    }
    
    init(_ name : String, _ age : Int){
        self.name = name
        self.age = age
    }
}

//getter를 통한 접근
let myFriend = Friend("현우", 24)
myFriend.info

//myFriend.info의 값을 설정하지 않고
//바로 myFriend.detailInfo에 접근하게 되면 초기에 설정해둔 ""값만 나오게 된다.
//setter를 활용해서 접근할 때 먼저 myFriend.info =""의 값을 바꾼다음 detailInfo에 접근해야 한다.
myFriend.info = "승기"
myFriend.detailInfo
