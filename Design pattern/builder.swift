import UIKit

//builder pattern의 핵심은 확장성 용이
struct Pet {
    var name : String? = nil
    var age : Int? = nil
    init(){}
    //builder라는 매개변수가 SecondBuilder의 값을 담는다
    init(builder : SecondBuilder){
        self.name = builder.name
        self.age = builder.age
    }
}

//class 자기 자신을 매개변수에 넣는 클로저를 생성
//또 그 값을 init에 매개변수로 넣음
class SecondBuilder {
    var name : String? = nil
    var age : Int? = nil
    
    typealias BuilderClosure = (SecondBuilder) -> ()
    
    init(buildClosure : BuilderClosure){
        buildClosure(self)
    }
}

class PetBuilder{
    private var pet : Pet = Pet()
    func withName(_ name : String) -> Self{
        pet.name = name
        return self
    }
    
    func withAge(_ age : Int) -> Self{
        pet.age = age
        return self
    }
    
    func build() -> Pet{
        return self.pet
    }
}

let myPet = PetBuilder()
    .withName("강아지")
    .withAge(10)
    .build()

let petBuilder = SecondBuilder{ builder in
    builder.name = "고양이"
    builder.age = 8
}

let mySecondPet = Pet(builder: petBuilder)
