import UIKit

struct Pet{
    var name: String
}

class Friend {
    var name : String
    init(name: String) {
        self.name = name
    }
}

var things = [Any]()
things.append(0)
things.append(3)
things.append(9)
things.append("Helloo")
things.append((2,10.5))
things.append(Friend(name: "승기"))
things.append(Friend(name: "한기"))
things.append({ (name: String) -> String in
    return "하이 \(name)"
})

for thing in things {
    switch thing{
    //조건 switch에서 case에 as를 쓴다 - 변수에 할당한다
    case 0 as Int:
        print("0입니다")
    case let someNumbers as Int where (1...5).contains(someNumbers):
        print("1~5사이 입니다")
    case let someInt as Int where someInt > 5:
        print("5보다 큽니다")
    //Friend의 형태 변환을 한 것이 aFriend기 때문에 조건절을 추가할 수 있음
    case let aFriend as Friend where aFriend.name == "승기":
        print("친구에요: \(aFriend.name)")
    case let asFriend as Friend:
        print("친구입니다: \(asFriend.name)")
    //Friend라는 자료형
    case is Friend:
        print("친구입니다")
    case let (x, y) as(Int, Double):
        print("x는 :\(x), y는:\(y)")
    case let sayHi as (String) -> String:
        print("문자열은: \(sayHi("현수"))")
    default:
        print("0이 아닙니다")
    }
}
