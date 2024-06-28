import UIKit

class MyFriend{
    var name: String
    
    init(_ name: String = "이름없음") {
        self.name = name
        print("MyFriend가 메모리에 올라감")
    }
    
    deinit{
        print("메모리에서 삭제")
    }
    
    //deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    
    //instancesOfSelf변수에 MyFriend빈 배열 할당
    static var instancesOfSelf = [MyFriend]()
    
    class func destorySelf(object: MyFriend){
        instancesOfSelf = instancesOfSelf.filter{ (aFrind : MyFriend) in aFrind !== object
        }
    }
    
    func call(){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destorySelf(object: self)
        }
    }
}

var myFriend = MyFriend("현우")
let aFriend = MyFriend()

//anObjectMemoryAddress의 물리 메모리 주소 구하는 함수
let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()
//secondMemoryAddress의 물리 메모리 주소 구하는 함수
let secondMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAddress)

print(secondMemoryAddress)

weak var aFriendToBeDestoried = MyFriend("개발중인 현우")

if aFriendToBeDestoried != nil{
    aFriendToBeDestoried!.call()
} else{
    print("객체가 더 이상 메모리에 없습니다")
}
