import UIKit

let myFriends : [String] = ["현우", "승기", "민주", "유진"]
let yourFriends : [String] = ["현우", "승기", "예환", "바리"]

let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

//중복된 값은 아예 제거하고 나머지 Set만 합침
let totalFriendsSet = myFriendsSet.symmetricDifference(yourFriends)
print(totalFriendsSet)
