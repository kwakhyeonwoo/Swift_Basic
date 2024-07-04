import UIKit

protocol Naming {
    var name : String { get set }
}

class Cat : Naming{
    var name = "고양이"
    init(_ name : String){
        self.name = name
    }
}

class Dog : Naming{
    var name: String = "강아지"
    init(_ name: String) {
        self.name = name
    }
}

extension Naming {
    //Naming extension안에서 where을 원하는 조건에 입력 가능
    func sayName() where Self : Cat {
        print("\(self.name)입니다")
    }
    
    func sayName() where Self : Dog{
        print("\(self.name)이네요")
    }
}

let myCat = Cat("고냥이")
let myDog = Dog("멍멍이")
myCat.sayName()
myDog.sayName()

