import UIKit

let myFriends : [String] = ["현우", "승기", "민주", "유진"]
let yourFriends : [String] = ["현우", "승기", "예환", "바리"]

//myFriends를 Set형태로 변경
let myFriendsSet = Set(myFriends)
//yourFriends를 Set형태로 변경
let yourFriendsSet = Set(yourFriends)

//totalFriendsSet은 myFriendsSet와 union을 통해 yourFriendsSet를 합침.
//union으로 지정을 하기 위해서는 .앞에 붙는 값이 무조건 Set형태로 지정이 되어 있어야 함
//.union뒤에 붙는 값은 배열,Set상관이 없음 무조건 .union앞에 붙는 값만 Set형태
let totalFriendsSet = myFriendsSet.union(yourFriends)
print(totalFriendsSet)
