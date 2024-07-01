import UIKit

//lazy - 사용할때 메모리에 올림으로써 메모리 공간을 효율적으로 사용할 수 있음.
//그래서 View부분에서 사용을 많이 함
struct Pet {
    init(){
        print("Pet이 생성됨")
    }
}

struct Friend {
    
    var name : String
    
    //lazy - 실행될 때 메모리에 올림
    //호출을 하지 않으면 메모리에 올라가지 않아 출력부에서 출력x
    lazy var pet : Pet = Pet()
    
    init(_ name : String){
        self.name = name
        print("Friend가 생성됨")
    }
}

var myFreind = Friend("현우")

myFreind.pet
