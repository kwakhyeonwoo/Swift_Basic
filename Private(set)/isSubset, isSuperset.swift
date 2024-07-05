import UIKit


//isSubset - 앞에 나오는 변수가 of Sequence값에 포함이 되냐
//isSuperset - 앞에 나오는 변수안에 of Sequence값이 포함이 되냐
//둘은 정 반대의 개념
let totalFriends : [String] = ["승기", "한기", "민지", "바리", "레이첼", "유진"]
let foreignFriends : [String] = ["바리", "레이첼"]
let koreanFriends : [String] = ["승기", "한기", "민지", "유진", "덕우"]

let totalFriendsSet = Set(totalFriends)
let foreignFriendsSet = Set(foreignFriends)
let koreanFriendsSet = Set(koreanFriends)

//초반 변수가 (of: 변수)에 속하냐 true false로 물어보는 Bool 문법
//foreignFriendsSet이 변수의 값이 totalFriendsSet값에 속해있냐 문법
let isforeignFriends = foreignFriendsSet.isSubset(of: totalFriendsSet)

print(isforeignFriends)

//totalFriendsSet값 안에 koreanFriendsSet이 값들이 다 존재하냐 -> fales("덕우는 isTotalFriendsSet에 없기 때문)
let isTotalFriendsSet = totalFriendsSet.isSuperset(of: koreanFriendsSet)
