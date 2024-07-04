import UIKit

//1,2,3
let myRange = 1...3
//0,1
let mySecondRange = 0..<2

for index in myRange {
    print("index: \(index)")
}

//mySecondRange에 2가 포함이 되지 않으므로 else를 따라서 감
if mySecondRange.contains(2){
    print("포함 O")
} else{
    print("포함 X")
}
