import UIKit

class Sword {
    
    var durability : Int = 49
    
    //swordInfo가 durability변수를 참조 의존 관계
    //기본형 자료가 getter인데 String의 자료형으로 접근을 한다.
    //그래서 get을 따로 안 적어도 됨. set이랑 같이 사용할때 get사용
    var itemInfo : String {
        get{
            switch durability{
            case 50...100:
                return "아직 ㄱㅊ"
            case 10...50:
                return "그럭저럭"
            default:
                return "수리해주세요"
            }
        }
    }
    
    func monster(){
        self.durability -= 40
    }
}

let mysword = Sword()
mysword.itemInfo

mysword.monster()
mysword.itemInfo
