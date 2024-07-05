import UIKit

//혹은 object-c를 이용한 방법으로 @objc를 선언해서 optional를 사용하면 class, struct에서 필수 구현이 없어도 됨.
@objc protocol Animal {
    @objc optional func user()
}

//기존 protocol에서는 메소드, 변수 설정을 하면 상속 class나 struct에 상속을 하면 필수로 구현을 해줘야 함
protocol Pet{
    func doCry()
}

//이때 class나 struct에서 doCry()를 구현하기 싫다라고 하면 extension으로 확장을 시키고 {}를 함으로써 비어있는 메소드로 설정을 한다
//이려면 메소드의 값을 할당했기 때문에 {}로 그래서
extension Pet{
    func doCry(){}
}

class myPet : Animal {
    
}

