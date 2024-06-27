import UIKit

//유튜버 구조라는 구조체 생성
//struct 문법
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

var hyun = YoutuberStruct(name: "현우", subscribersCount: 9000)

var hyunClone = hyun

//현우
print("hyun의 이름1: \(hyunClone.name)")

hyunClone.name = "인간"
//인간
print("hyun의 이름2: \(hyunClone.name)")

//현우
print("hyun의 이름3: \(hyun.name)")

//struct에서 이름1: 현우, 이름2: 인간, 이름3: 현우
//hyun.name의 값이 현우가 나온 이유는 hyunClone의 prototype을 생각해보면 간단함. hyunClone.name이라는 prototype의 name인 값을 바꿨는데 hyun에는 바꾸지 않았고 값을 참조도 하지 않았음. 
//따라서 hyun.name에는 "현우"값이 나오는게 맞음. 그리고 hyunClone.name이라는 prototype의 name에 값을 "인간"으로 바꿔서 hyunClone.name은 "인간"으로 나오는것도 맞음

//class 문법
class YoutuberClass {
    var name : String
    var subscribersCount : Int
    //생성자 - 메모리에 올림
    //init으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣어서 그 값을 가진 객체를 만들 수 있다.
    init(_ name: String, _ subscribersCount: Int){
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var hyunwoo = YoutuberClass("현우", 9000)
var hyunwooClone = hyunwoo

print("hyunwooClone의 이름1: \(hyunwooClone.name)")

hyunwooClone.name = "필수"
print("hyunwooClone의 이름2: \(hyunwooClone.name)")
print("hyunwoo의 이름3: \(hyunwoo.name)")

//class에서 이름1: 현우, 이름2: 필수, 이름3: 필수
//class에서는 결합력이 높다.(ex - Thread의 개념으로 이해하면 된다.) 그래서 class에서는 Clone을 시켜도 변경 값이 유지 된다. class에서는 Clone을 시켜도 같은 메모리 공간을 바라보고 있음
