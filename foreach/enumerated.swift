import UIKit

let myFriend : [String] = ["승기", "현우", "영기", "한수"]

var friendIndex : [String] = []

//enumerated - 인덱스 값 가져올때 사용
//for문을 돌리는데 ()안에는 (index, Value)가 들어가기 때문에 aFriend로 값을 사용
//얼마만큼 for문을 돌리냐면 myFriend의 개수만큼 enumerated로 인덱스의 값을 구하겠다.
for(index, aFriend) in myFriend.enumerated(){
    print("index: \(index), item: \(aFriend)")
    friendIndex.append("\(index).번 \(aFriend)")
}
