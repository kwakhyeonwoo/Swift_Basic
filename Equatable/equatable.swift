import UIKit

//Equatable - 두가지 데이터를 비교할 수 있게 함, 타입끼리의 비교 연산자를 사용할때 꼭 사용하는 프로토콜
//class instance, struct와 같은 비교를 ==로 할려면 무조건 Equatable을 사용해서 비교해야 함
struct Pet : Equatable{
    let id : String
    let name : String
    static func == (lhs: Pet, rhs: Pet) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func != (lhs: Pet, rhs: Pet) -> Bool {
        return lhs.id != rhs.id
    }
}

let myPet1 = Pet(id: "01", name: "고양이")
let myPet2 = Pet(id: "02", name: "강아지")
let myPet3 = Pet(id: "01", name: "참새")

//if myPet1.id == myPet3.id {
//    print("둘은 같은 id이다")
//}

if myPet1 == myPet3 {
    print("같은 id를 사용하고 있다. ")
}

if myPet1 != myPet2{
    print("다른 id를 사용하고 있다.")
}
