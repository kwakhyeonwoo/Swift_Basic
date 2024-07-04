import UIKit

//Singleton pattern - 인스턴스를 하나만 생성해 메모리 공간의 낭비를 줄여줌
//기존
class Pet{
    //클래스 자체를 메소드화 해서 shared상수에 저장
    //이런식으로 name, age를 Pet에 담고 외부에서 Pet.name, Pet.age로 따로 접근하면 두개의 메모리가 생성
    //하지만 Singleton을 통해 하나의 인스턴스만 접근이 가능하게 해서 메모리 절약을 시킴
    //private init, 생성자 init을 private로 지정함에 따라 외부에서 추가적인 인스턴스 생성을 억제, 즉 하나의 인스턴스만 생성
    static let shared = Pet()
    private init() {}
    
    var name : String?
    var age : Int?
}

class NewPet : Pet{
    let myCat = Pet.shared
    
    let myDog = Pet.shared
}
