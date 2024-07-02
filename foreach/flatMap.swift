import UIKit

//myFriend를 2차원 배열로 정의
let myFriend = [
    ["승기"],
    ["현승"],
    ["민지"],
    ["개발중인", "현우"],
    ["스티브", "잡스"]
]

//flatMap을 통해서 2차원 배열을 하나의 배열로 핌
let myFriendFlatMap = myFriend.flatMap { (item: [String]) in
    return item
}

print(myFriendFlatMap)
