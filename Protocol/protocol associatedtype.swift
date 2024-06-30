import UIKit


//protocol에서 제네릭 사용하기 - associatedtype
protocol PetHaving {
    associatedtype T
    var pets : [T] { get set }
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(_ newPet: T){
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}

//Friend에서 pets은 Animal을 가진 빈 배열
struct Friend : PetHaving{
    var pets: [Animal] = []
}

//Family에서 pets은 String형태의 빈 배열
//따라서 Family pets에서 Animal에 접근하면 에러 발생
struct Family : PetHaving{
    var pets: [String] = []
}

var myFriend = Friend()

myFriend.gotNewPet(Animal.bird)
myFriend.gotNewPet(Animal.dog)
myFriend.gotNewPet(Animal.cat)
myFriend.pets

var myFamily = Family()

//pets가 제네릭형태라 문자열도 가능
myFamily.gotNewPet("거북이")
myFamily.gotNewPet("토끼")
myFamily.gotNewPet("강아지")
myFamily.pets
