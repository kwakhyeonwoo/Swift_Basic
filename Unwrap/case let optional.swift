import UIKit

//값에 nil이 존재하기때문에 자료형 [String]부분에 ?로 옵셔널을 추가함
let friends : [String?] = [nil, "승기", "민주", nil, "현승"]

let numbersString : [String] = ["1", "2", "4", "6", "여섯"]
//numbersString의 문자열을 Int로 형변환 하기
//Int형태만 있는게 아닌 문자열도 있기때문에 옵셔널을 활용해서 [Int?]로 작성
let numbers : [Int?] = numbersString.map{ Int ($0)}

var someValue :String? = "현우"

//unwrappedValue의 자료형은 String, 만약 someValue의 값이 존재하면 unwrappedValue에 String형태로 값을 지정하겠다
if case let unwrappedValue? = someValue{
    print("unwrapped: \(unwrappedValue)" )
}

//nil이 아닌 애들만 불러오겠다
for case let aNumber? in numbers {
    print("friends: \(aNumber)")
}
