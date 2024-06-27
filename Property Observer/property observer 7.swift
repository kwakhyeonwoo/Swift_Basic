import UIKit

var myAge = 0 {
    willSet{
        print("값이 설정될 예정. myAge:", myAge)
    }
    didSet{
        print("값이 설정됨. myAge:", myAge)
    }
}
//0, 10
myAge = 10
//10, 20
myAge = 20
//20, 50
myAge = 50

//willSet - 값이 저장되기 직전 호출
//didSet - 값이 저장되고 호출
//MVC 패턴 Model에서 변경된 값을 View에서 보여줄 때 많이 사용
