import UIKit

//키 : 값 형태로 들어감
var myFriend = ["bestFriend" : "승현",
                "highSchool" : "선유고"
                ]

let myBestFriend = myFriend["bestFriend"]

let myHighSchool = myFriend["highSchool"]

let youtubeFriend = myFriend["youtube", default: "친구가 없어요"]

myFriend["bestFriend"] = "현우네요"

let BF = myFriend["bestFriend"]

//새로운 키 입력
myFriend["newFriend"] = "승기"

let newFriend = myFriend["newFriend"]

//새로운 키 입력 다른 방법
myFriend.updateValue("그러게요", forKey: "girlFriend")

let myGirlFriend = myFriend["girlFriend"]

//updateValue를 통해 기존의 키 값도 변경 가능
myFriend.updateValue("polla", forKey: "bestFriend")

let myBestFriend2 = myFriend["bestFriend"]

//비어있는 Dictionary 생성하기
//let emptyDictionary : [String: Int] = [:]
//같은형태로 비어있는 Dictionary 생성하기
let emptyDictionary = [String : Int]()

let myEmptyDictionary : [String : Int] = Dictionary<String, Int>()

myFriend.count

//현재 myFriend에 있는 key, value 보여주기
for item in myFriend {
    print("item: \(item)")
}
