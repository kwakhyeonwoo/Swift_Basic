import UIKit

//ex) Codalbe = Json이라 생각하면
//Encodable = Json으로 만들겠다.
//Encodable = class, struct형태를 Json으로 만들겠다.
//Decodable = Json을 class, struct로 만들겠다.
//Codable = Encodable && Decodable의 혼합체
let jsonFromServer = """
{
    "nick_name" : "개발중인 현우",
    "job" : "Student",
    "user_name" : "polla"
}
"""

//Json을 Codable로 받을때 옵셔널로 정의해야 값이 다를 경우 print했을때 nil로 출력되면서 어느 부분이 에러인지 판단하기 쉬움
struct User : Decodable{
    var nickname : String?
    var job : String
    var userName: String
    
    enum CodingKeys: String, CodingKey {
        case nickname = "nick_name"
        case job
        case userName = "user_name"
    }
    
    //jsonString을 문자열로 받고 반환을 Self(User)로 반환한다.
    //그리고 값이 다를경우 nil을 통해 반환
    //guard let jsonData의 참조형은 Data이기 때문에 참조형을 Data로 작성
    //매개변수로 들어온 jsonString을 통해 출력 / jsonFromServer를 사용하지 않아도 됨.
    static func getUserFromJson(_ jsonString: String) -> Self? {
        guard let jsonData : Data = jsonString.data(using: .utf8) else {
            return nil
        }
        
        //jsonFromServer에 값이 존재하면 do catch문으로 값 처리
        //jsonFromServer에 있는 Json파일을 struct로 바꾸기 위해 decode사용
        //자료형태는 User자기 자신이기 때문에 User.self로 작성
        //위에 utf8로 변형한 jsonData를 decode(from: )부분에 넣으면서 jsonData의 값을 받겠다
        do {
            let user = try JSONDecoder().decode(User.self, from: jsonData)
            print("user: \(user)")
            return user
        } catch {
            print("에러 발생: \(error.localizedDescription)")
            return nil
        }
    }
}

let user = User.getUserFromJson(jsonFromServer)
