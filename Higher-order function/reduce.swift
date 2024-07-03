import UIKit

struct Friend : Hashable {
    var name : String
    var age : Int
}

let myFriend = [
    Friend(name: "승기", age: 22),
    Friend(name: "유희", age: 22),
    Friend(name: "한기", age: 23),
    Friend(name: "민지", age: 23)
]

//초기값은 0으로 두고 반복문을 돌면서 계속 실행
//partialResult이 누적값으로 aFriend.age의 값을 계속 더함
let totalAge = myFriend.reduce(0) { partialResult, aFriend in
    return partialResult + aFriend.age
}

//나이가 같은 사람들끼리 묶음
let groupFriends = myFriend.reduce(into: [:]) { partialResult, aFriend in
    return partialResult[aFriend.age] = myFriend.filter{$0.age == aFriend.age}
}

groupFriends
