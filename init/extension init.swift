import UIKit

struct Pet{
    var name : String
    
}

//struct는 기본으로 생성자 init을 만들어줌.
//하지만 struct의 init을 확장하기 위해서 마찬가지로 extension을 사용해서 struct Pet의 init을 확장 시킬 수 있다.
extension Pet{
    init(){
        name = "현우"
    }
}

let pet = Pet(name: "승기")
