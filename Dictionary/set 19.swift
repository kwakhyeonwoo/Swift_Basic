import UIKit

//Set은 바구니에 담겨져 있다. 따라서 순서대로 값을 가져올 수 없다.
//그래서 Set은 배열과 달리 정해진 자리가 없어서 인덱스를 찾아서 해당 인덱스를 지워야 한다.
var myNumberSet : Set<Int> = Set<Int>()

//Set은 같은 값이 들어가면 들어가지지 않음
myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)

myNumberSet.count
myNumberSet

for aNumber in myNumberSet {
    print("aNumber: \(aNumber)")
}

var myBestFriend : Set<String> = ["승기", "현수", "유희"]
myBestFriend.contains("유기")

//Set은 바구니 안에서 일일이 찾아야 하기 때문에 원하는 인덱스를 찾는다
//만약 해당 인덱스를 찾으면 remove(at:)을 통해 지운다
if let indexToRemove = myBestFriend.firstIndex(of: "현수"){
    print("indexOf: \(indexToRemove)")
    myBestFriend.remove(at: indexToRemove)
}

myBestFriend
