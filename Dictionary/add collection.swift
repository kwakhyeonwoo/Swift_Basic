import UIKit

//기존 append는 let일때는 사용 불가능
//하지만 새로운 변수 생성해서 추가하는건 let이어도 가능
let myFriends : [String] = ["승기", "현승", "화진"]

let otherFriends : Set<String> = ["브레드 피트", "찰리 푸스", "벤슨 분"]

let totalFriens = myFriends + otherFriends
print(totalFriens)
