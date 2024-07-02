import UIKit

enum FriendType {
    case normal, best
}

struct Friend {
    var name : String
    var type : FriendType
}

var friendList = [
    Friend(name: "승기", type: .normal),
    Friend(name: "한수", type: .best),
    Friend(name: "준기", type: .best),
    Friend(name: "민지", type: .normal)
]

//원문
//let groupFriend = Dictionary(grouping: friendList, by: {
//    (friend) -> FriendType in
//    return friend.type
//})

//축약본
//$0을 통해 FriendType in을 없앰
let groupFriend = Dictionary(grouping: friendList, by: {$0.type})

//normal은 normal끼리, best는 best끼리 분류
groupFriend[.normal]
groupFriend[.best]
