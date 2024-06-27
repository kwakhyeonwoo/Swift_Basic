import UIKit

//옵셔널(Optional)변수
//뒤에 ?를 붙임으로 값이 있는지 없는지 확인

var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

//Optional(90)으로 값이 래핑되어서 나옴
print("someValue 값이 있다: \(someVariable)")

//언래핑은 - 감싸져있는걸 벗김
//someVariable에 값이 있으면 otherVariable로 사용을 하겠다.
if let otherVariable = someVariable {
    print("값이 있다: \(otherVariable)")
} else {
    print("값이 없다")
}

someVariable = nil

//someVariable의 값이 비어있으면 얘를 넣겠다.
let myValue = someVariable ?? 10
print("myValue: \(myValue)")

var firstValue : Int? = 30
var secondValue : Int? = 50

//Optional(30)
//Optional(50)
print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

//unwrap() called 30
//unwrap() called 50
unwrap(firstValue)
unwrap(secondValue)

//parameter앞에 _를 추가함으로 unwrap에 firstValue만 입력 가능 (원래는 parameter: firstvalue로 써야함)
func unwrap(_ parameter: Int?) {
    print("unwrap() called")
    
    guard let unWrappedParameter = parameter else {
        return
    }
    print("unWrappedParameter: \(unWrappedParameter)")
}

//if let과 guard let은 옵셔널 바인딩 한다는 특징이 있음
//변수가 있을지 없을지 모르는 ? 환경에서 옵셔널을 사용하는데 그 값을 안전하게 가져오기 위해 옵셔널 바인딩인 if let, guard let를 사용함
//if let은 성공, 실패 두 가지 상황을 만들어 사용 가능 (지역 변수로 사용해 구문 밖에서는 접근 불가능)
//guard let은 참일 경우 코드가 계속 실행되며, 거짓일 경우 함수 내부가 실행 - 그래서 함수 내부에는 return, break, continue, throw같은 제어문 전환 명령어를 사용해야 함

