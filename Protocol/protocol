import UIKit

//protocol로 약속하기
//자바의 인터페이스와 비슷한 느낌
//protocol - 모든 메소드 구현 x,파라미터 기본 값 지정 x, 정적 변수 선언 o
protocol Naming{
    
    //우린 이런 name과 같은 변수를 가지고 있을 것이다. 약속
    var name : String {get set}
    
    //우리는 getName의 메소드를 가지고 있으며 String으로 반환할 것이다라는 약속
    func getName() -> String
}

//protocol implement
struct Friend : Naming{
    var name: String
    
    func getName() -> String {
        return "내 친구 " + self.name
    }
}

let myFriend = Friend(name: "승기")
print(myFriend.name)
print(myFriend.getName())
