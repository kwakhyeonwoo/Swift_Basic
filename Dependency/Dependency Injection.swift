import UIKit

protocol Talking {
    //saying의 값은 문자열 형태로 가져올 수 있고 설정할 수 있음
    var saying : String {get set}
    func sayHi()
}

class BestFriend : Talking{
    var saying: String = "베스트 친구"
    
    func sayHi() {
        print("ㅎㅇ 오랜만")
    }
}

class OldFriend : Talking {
    var saying: String = "오래된 친구"
    func sayHi() {
        print("오랜만~")
    }
}

class Friend {
    
    //talkProvider의 자료형이 Talking이기 때문에 BestFriend, OldFriend를 다 넣을 수 있음
    //talkProvider에 의존성 주입을 시킴
    var talkProvider : Talking
    
    //Talking protocol에 있는 saying을 가져오기 위해 문자열로 받음
    //값을 받기 위해 get을 사용했는데 그때 talkProvider에 있는 saying을 가져오겠다 선언
    var saying : String {
        get {
            talkProvider.saying
        }
    }
    
    init(_ talkProvider : Talking){
        self.talkProvider = talkProvider
    }
    
    //생성자 init의 다른 형태로 생성
    func setTalkProvider(_ newProvider : Talking){
        self.talkProvider = newProvider
    }
    
    func sayHi(){
        talkProvider.sayHi()
    }
}
let myBestFriend = Friend(BestFriend())
myBestFriend.sayHi()
myBestFriend.saying


let myOldFriend = Friend(OldFriend())
myOldFriend.sayHi()
myOldFriend.saying
