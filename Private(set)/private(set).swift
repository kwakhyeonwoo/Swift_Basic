import UIKit

struct MyPet {
    //title은 (public)을 통해 외부에서 직접적인 값 변경이 가능
    var title : String = "타이틀없음"
    
    //name의 사용은 가능, 하지만 private으로 직접적인 접근으로 값 변경은 불가능
    //set마저 없으면 외부에서 값 접근조차 불가능 하지만 (set)을 통해 외부에서 값 접근만 가능
    private (set) var name : String = "이름없음"
    
    //name의 이름 변경을 하기 위해 mutating을 사용하고 변경된 값은 setName에 집어넣겠다.
    mutating func setName(to newName : String){
        self.name = newName
    }
}

var myPet = MyPet()
myPet.name
//myPet.title

myPet.title = "타이틀"
myPet.title

myPet.setName(to: "강아지")
myPet.name
