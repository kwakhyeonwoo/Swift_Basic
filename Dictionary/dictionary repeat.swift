import UIKit

//Dictionary 반복 돌리기
let myFriend : [String : Int] = ["현우" : 24, "승기" : 22, "민주" : 23]

//for문을 통한 Dictionary반복 돌리기, myFriend 값 만큼 돌리기
//Dictionary 특성상 key,value가 들어가기 때문에 입력값 2개가 들어가야 함
for (name,age) in myFriend {
    print("이름: \(name) 나이: \(age)")
}

//forEach를 통한 반복 돌리기
myFriend.forEach { (key: String, value: Int) in
    print("이름:\(key) 나이: \(value)")
}

//Dictionary에서 key만 가져오기
myFriend.keys.forEach { name in
    print("이름: \(name)")
}

//Dictionary에서 value만 가져오기
myFriend.values.forEach { age in
    print("나이: \(age)")
}
