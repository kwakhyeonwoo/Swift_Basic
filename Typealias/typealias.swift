import UIKit

protocol Naming{
    func getName() -> String
    
}

protocol Aging {
    func getAge() -> Int
}

typealias Friendable = Naming & Aging

typealias FullNaming = Naming

struct Friend : Friendable{
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
}

typealias FriendName = Friend

var friendName : String = "현우"

typealias Friends = [Friend]

var myFriend : [Friend] = []

//클로저도 typealias를 통해 간단하게 사용할 수 있다.
typealias StringBlock = (String) -> Void

func sayHi(completion : StringBlock) {
    print("안녕하세요")
    completion("개발중입니다")
}

sayHi(completion: { saying in
    print("여기 값은 : \(saying)")
})

class MyType {
    enum myType {
        case dog
        case cat
        case bird
    }
    var mytype = my_Type.dog
}

//typealias my_Type을 통해 dog, cat, bird에 접근 가능
//class안 enum, enum안에 enum에 접근하기 위해 typealias 사용해서 다시 정의
//받고 싶은 return이 여러개일때 typealias 사용해서 다시 접근하면 효율적
typealias my_Type = MyType.myType

var myClass = MyType()

myClass.mytype = my_Type.dog
