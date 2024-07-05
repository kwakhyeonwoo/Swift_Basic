import UIKit

//from - 시작값, to - to-1까지
//그래서 from 5, to 0, by -1인데 5,4,3,2,1까지만 나옴
for countDown in stride(from: 5, to: 0, by: -1){
    print("countDown: \(countDown)")
}

//through는 해당 Int까지 값을 포함 시킴
//따라서 아래 값은 5,4,3,2,1,0이란 결과가 나옴
for countDown in stride(from: 5, through: 0, by: -1){
    print("countDown: \(countDown)")
}

//chunks 변수의 chunkSize의 값을 Int로 받고 2차원 배열로 반환을 하겠다.
//0부터 자기 자신의 개수만큼 돌린다. 단계는 chunkSize만큼 할것이다.
//나온 값들을 map을 통해 형태 변형
//새 배열을 만들고 자기 자신의 첫번째 매개변수부터 최솟값만큼 돌린다
extension Array{
    func chunks(_ chunkSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: chunkSize).map{
            return Array(self[$0..<Swift.min($0 + chunkSize, self.count)])
        }
    }
}

let myArray = Array(1...10)
let chunkArray = myArray.chunks(2)
print(chunkArray)
