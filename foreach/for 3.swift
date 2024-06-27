import UIKit

//range
1,2,3,4,5
for i in 1...5{
    print("11: \(i)")
}

//1,2,3,4
for i in 1..<5{
    print("22:", i)
}

//2,4
for i in 1..<5 where i % 2 == 0 {
    print("33: \(i)")
}

var randomInts : [Int] = []

//정수 삽입시 append,insert가 있는데 insert시 오버헤드 발생때문에 대부분 append사용
for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")
