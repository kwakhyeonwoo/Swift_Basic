import UIKit
//Foundation - 텍스트 입력 대부분
import Foundation

struct Pet{
    
    //enum타입에 다른 형태의 변수인 var Value를 넣음으로 구조 간결화
    enum myPet{
        case Dog
        case Cat
        case bird
        
        var Value : String {
            
            //switch문에서 자기 자신을 돌리면서 결과 확인 
            switch self{
            case .Cat:
                return "고양이"
            case .Dog:
                return "강아지"
            case .bird:
                return "새"
            }
        }
        
        var name : String {
            switch self{
            case .Cat:
                return "루시"
            case .Dog:
                return "초코"
            case .bird:
                return "버드"
            }
        }
    }
    
    let mypet : myPet
    var description : String {
        return "우리 집 \(mypet.Value) \(mypet.name)"
    }
}

let myCat = Pet(mypet: .Cat)
print(myCat.description)

let myDog = Pet(mypet: .Dog)
print(myDog.description)

let myBird = Pet(mypet: .bird)
print(myBird.description)
