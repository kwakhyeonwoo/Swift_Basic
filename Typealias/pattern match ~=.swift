import UIKit

let statusCode = 500

if(400...500).contains(statusCode){
    print("있음")
}

//위 문법과 마찬가지로 statusCode가 400..<500사이에 있냐 물어보는 문법
//contains랑 같다고 생각해도 무방
if(400..<500) ~= statusCode{
    print("들어옴")
} else{
    print("벗어남")
}
