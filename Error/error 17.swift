import UIKit

//Error를 만들때 enum타입으로 만들 수 있다.
enum MismatchError : Error {
    case NameMismatch
    case NumberMismatch
}

//매개변수로 들어올때 이름은 input으로 사용하고 guessMyName 호출부에서는 name을 사용해 정의하겠다.
//에러를 던지는 메소드
func guessMyName(name input: String) throws{
    print("guessMyName() called ")
    if input != "현우" {
        print("틀렸다.")
        throw MismatchError.NameMismatch
    }
    
    print("맞췄다.")
}

/// 번호를 맞춤
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞았는지 여부
func guessMyNumber(number input: Int) throws -> Bool {
    print("guessMyNumber() called ")
    if input != 210 {
        print("틀렸다.")
        throw MismatchError.NumberMismatch
    }
    
    print("맞췄다.")
    return true
}

//throw를 통해 던질때 호출부에서는 try를 사용해서 호출
//근데 에러가 있어도 처리하지 않겠다라고 하면 try뒤에 ?를 붙여서 호출한다
try? guessMyName(name: "승기")

//이 try뒤 메소드에는 무조건 에러가 없을것이다를 표시.
//근데 guessMyName에 throw를 통해 던진 에러가 있으니 얘는 무조건 에러가 발생
try! guessMyName(name: "승기")

//try-catch를 통해서 try에서 잡은 에러를 catch문 \(error)에서 보여주게 됨
do{
    try guessMyName(name: "승기")
} catch {
    print("잡은 에러: \(error)")
}

do{
    let receivedValue = try guessMyNumber(number: 010)
} catch {
    print("잡은 에러: \(error)")
}
