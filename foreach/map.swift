import UIKit

let myFriendArray : [String] = ["승기", "현승", "유한", "민기"]

let myFrined = myFriendArray.map{ aFriend in
    return "내 친구는: \(aFriend)"
}

let bestFriendArray : [String?] = ["승기",nil,"유한",nil]

//compactMap을 이용해서 스스로 unwrap시켜줌
//bestFriendArray에서 [String?]으로 옵셔널을 시켜줘도 unwrapping과정을 일일이 적지 않아도 사용 가능
let myBestFriend : [String] = bestFriendArray
    .compactMap { $0 }
    .map{
        return "내 베프: \($0)"
    }
print(myBestFriend)

let Numbers : [Int] = [10,40,20,30]

let myNumber : [String] = Numbers.map { aNumber in
    return "내 숫자는: \(aNumber)"
}

let myPet = ["강아지" : "멍멍", "고양이" : "야옹"]

let myPetDictionary : [String] = myPet.map {
    return "\($0)의 울음소리는 \($1)이다"
}

let numberSet : Set<Int> = [1,1,1,2,3,3,4,5,5]

let myNumberSet : [String] = numberSet.map {
    return "나의 숫자는 \($0 * 10)"
}
