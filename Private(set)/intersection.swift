import UIKit

let myFriends : [String] = ["현우", "승기", "민주", "유진"]
let yourFriends : [String] = ["현우", "승기", "예환", "바리"]

let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

//intersection - 중복된 값만 가져온다
let totalFriendsSet = myFriendsSet.intersection(yourFriendsSet)
print(totalFriendsSet)
