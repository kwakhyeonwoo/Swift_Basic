import UIKit

//자료형이 [Int]인 배열 생성
let numbers : [Int] = [1,1,1,2,2,3,6,13,9]

//자료형이 [Int]인 배열을 Set형태로 변경
let uniqueNumbers = Set(numbers)

//Set으로 변경된 변수가 Array를 통해 배열로 변경
var uniqueNumbersArray = Array(uniqueNumbers)

//변수가 배열로 변경이 돼서 오름차순 sort()로 변경 가능
uniqueNumbersArray.sort()
