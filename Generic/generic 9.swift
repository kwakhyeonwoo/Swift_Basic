import UIKit

//제네릭의 값으로 SomeElement 변수를 담겠다
struct MyArray<SomeElement>{
    
    //제네릭을 담은 빈 배열
    //elements는 제네릭 변수 SomeElement를 받고 있음
    var elements = [SomeElement]()
    
    //그때 생성자를 통해 elements는 선언 이름 없이 어떠한 값들이 와도 되는지 self.elements로 알려주고 있음
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
}

struct Friend {
    var name: String
}

var mySomeArray = MyArray([1,2,3])
print("mySomeArray: \(mySomeArray.elements)")

var myStringArray = MyArray(["가","나","다"])
print("myStringArray: \(myStringArray.elements)")

let friend_01 = Friend(name: "영희")
let friend_02 = Friend(name: "철수")
let friend_03 = Friend(name: "짱구")

var myFriendArray = MyArray([friend_01,friend_02,friend_03])
print("myFriendArray: \(myFriendArray)")
