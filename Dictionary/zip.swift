import UIKit

//이런식으로 Sequence를 넣으면 짝에 맞춰서만 가능(index 0~2까지만 가능해서 "유민"이 안나옴)
let friends : [String] = ["승기", "현수", "민지"]
let pets : [String] = ["강아지", "고양이", "거북이"]

let FriendAndPets = zip(friends, pets)

for aPair in FriendAndPets {
    print("index: \(aPair)")
}

//numbers를 값을 무한대로 주고 friends의 값만큼 받겠다 선언
let friends : [String] = ["승기", "현수", "민지", "유민"]
let numbers = (1...Int.max)
let FriendAndPets = zip(friends, numbers)

for aPair in FriendAndPets {
    print("index: \(aPair)")
}

//마찬가지로 배열로 정리 가능
let myArray = Array(FriendAndPets)
