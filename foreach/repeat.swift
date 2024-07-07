import UIKit

var count : Int = 6

var max : Int = 5

//일단 실행 -> 조건 체크 (do-while)
//아래와 같이 count가 6의 값이어도 repeat로 일단 실행을 시키기때문에 7의 값이 출력이 됨
repeat {
    count += 1
    print("index: \(count)")
} while count < max

//조건 먼저 -> 실행
//while count < max {
//    count += 1
//    print("index: \(count)")
//}
print("완료")
