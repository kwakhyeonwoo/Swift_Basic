import UIKit

//completion이라는 클로저를 매개변수로 가지는 메소드 정의

//() -> Void
//입력받는 값이 없고 반환값도 없기 때문에 아래와 같이 정의
func completion(){
    
}

func sayHi(completion: () -> Void){
    print("sayHi() called")
    sleep(2)
    //"sayHi() called"이 문구가 실행이 되고 completion을 다시 호출하면서 클로저 실행
    completion()
}

sayHi(completion: {
    print("2초가 지남 1")
})
//
sayHi() {
    print("2초가 지남 2")
}
//
sayHi {
    print("2초가 지남 3")
}

//(String) -> Void
//user에게 String형의 Input을 받고 Void기 때문에 반환값은 없다
//func completion(userInput : String){
//    
//}

func sayHiWithName(completion: (String) -> Void){
    print("sayHiWithName")
    sleep(2)
    completion("qwe")
}

//튜플 사용 String으로 지정하기 위해 comment는 문자열이다로 알려줌
sayHiWithName(completion: { (comment: String) in
    print("2초가 지났네요 \(comment)")
})

sayHiWithName(completion: { comment in
    print("2초가 지났네요 \(comment)")
})
//
sayHiWithName{ comment in
    print("2초가 지났네요 \(comment)")
}
//
////$표시를 통해 0번째 들어오는 맨 첫번째 값을 받겠다.
sayHiWithName{
    print("2초가 지났네요 \($0)")
}

//매개변수로 데이터를 여러개 반환하는 클로저
//마찬가지로 String을 통헌 입력 값은 두 개가 있고 반환 값은 없으므로 아래와 같이 정의된다.
//func completion (userInput: String, userInput: String){
//
//}
func sayHiWithFullName(completion: (String, String) -> Void){
    print("sayHiWithFullName")
    sleep(2)
    //클로저 실행과 동시에 데이터 반환
    completion("qwe", "그렇다네요~")
}

sayHiWithFullName{ first, second in
    print("확인해주세요: \(first), \(second)")
}

sayHiWithFullName{ _, second in
    print("확인해주세요: \(second)")
}

//마찬가지로 String, String 두 값을 받는데 $0,$1로 값을 받는다
sayHiWithFullName{
    print("첫번째: \($0), 두번째: \($1)")
}

//하나의 클로저 부분인 () -> Void부분을 감싸면서 Optional로 만듦으로써 비동기 처리를 진행
func sayHiOptional(completion: (() -> Void)? = nil){
    print("sayHiOptional() called")
    sleep(2)
    completion?()
}

sayHiOptional()

//비동기 동작 중 completion을 넣음으로 내부가 동작하게 만듦
sayHiOptional(completion: {
    print("2초가 지났습니다")
})


//(Int) -> String
func transform(number:Int) -> String{
    return "숫자: \(number)"
}

var myNumbers : [Int] = [0,1,2,3,4,5]

var transformedNumbers = myNumbers.map { (aNumber: (Int)) -> String in
    return "숫자: \(aNumber)"
}

//map구조가 'transform: (Int) throws -> T'의 형태로 되어 있다
var transformedNumbers = myNumbers.map { aNumber in
    return "숫자: \(aNumber)"
}


var transformedNumbers = myNumbers.map {
    return "숫자: \($0)"
}

print(transformedNumbers)
