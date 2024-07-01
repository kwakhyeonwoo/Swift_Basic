import UIKit

func getName(_ name : String) -> String {
    return "내 이름은 \(name)이다"
}

var getNameClosure : (String) -> String

//sayHi는 getName에 속하는 (String) -> String라는 클로저를 매개변수로 받음
func sayHi(getName: (String) -> String, name: String) -> String{
    //getName이라는 매개변수를 클로저로 받고 해당 클로저를 반환함
    return getName(name)
}

let resultOne = sayHi(getName: getName(_ :), name: "현우")
