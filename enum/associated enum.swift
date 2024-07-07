import UIKit

//enum으로 다양한 형태 지원 가능
//클로저, 튜플등
enum SomeEnum{
    case doSomething
    case saySomething(word: String)
    case sayHello(String)
    case someAction(action: () -> Void)
    case someValue(Value: (name: String, age: Int))
    case someValueExample(name: String, age: Int, String)
}

let someEnum = SomeEnum.someAction(action: {
    print(#fileID, #function, #line, "- ")
})

switch someEnum {
case .someAction(let action):
    action()
default:
    break
}
