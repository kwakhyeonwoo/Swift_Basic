import UIKit

//optional chaining - 체인 처럼 연속적으로 옵셔널에 접근하는 것, 강제 바인딩을 진행하지 않음
struct Friend{
    let nickname : String
    let person : Person?
}

struct Person{
    let name : String
    let pet : Pet?
}

struct Pet{
    let name : String?
    let kind : String
}

let pet = Pet(name: "개냥이", kind: "고양이")
let person = Person(name: "현우", pet: pet)
let friend = Friend(nickname: "승기", person: nil)

func getPetname() {
    guard let petName = friend.person?.pet?.name else {
        print("petName없음")
        return
    }
    print("petName있음: \(petName)")
}
getPetname()

//optional을 통해 person,pet에 값의 유무를 확인
if let person2 = friend.person?.pet?.name{
    print("값이 있네: \(person)")
} else {
    print("값이 없음")
}

//언래핑 과정
//friend.person에 값이 존재하면 상수 person에 값이 담김
//그걸 또 pet이라는 상수에 집어넣고 그걸 또 petName이라는 상수에 집어넣음
//계속 언래핑 시키는 과정
if let person3 = friend.person,
    let pet = person.pet,
    let petName = pet.name{
    print("petName: \(petName)")
} else {
    print("petName이 없습니다")
}

//optional binding을 통해 값이 존재하면 가져온다
//unwrapping과정 값이 있으면 person변수에 담겠다
if let petson4 : Person = friend.person {
    if let pet = person.pet {
        if let petName = pet.name{
            print("petName: \(petName)")
        } else {
            print("petName이 없습니다")
        }
    }
}
