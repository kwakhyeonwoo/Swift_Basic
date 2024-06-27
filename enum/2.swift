import UIKit

//enum - 타입을 나눔(값을 그룹으로 묶어서 사용할 수 있음
//ex) - 학교를 기준으로 초,중,고를 나눔
enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high
}

let yourSchool = School.middle
//print("your School: \(yourSchool)")
print("your School:", yourSchool)

//Grade를 정수형으로 설정하기 위해 Int로 설정
enum Grade : Int {
    case first = 1
    case second = 2
}

//enum안에 값 정수를 가져오기 위해서는 rawValue 사용
//rawValue는 String, Char, Int, Float만 사용 가능
//enum rawValue값을 혼합해서 사용 불가능(String이랑 Int를 같이 사용할 수 없음)
let yourGrade = Grade.first
print("yourGrade: \(yourGrade.rawValue)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    //yourMiddleSchoolName: middle(name: "선유중")
    //이걸 "선유중"만 나오게 바꾸기 위함
    //나 자신을 부른다의 switch self로 middle이 선택 되었을때를 얘기하고 있음
    //이때 middle의 parameter값을 name으로 위에서 String의 값을 받아오고 있음
    func getName() -> String{
        switch self {
        case.elementary(let name):
            return name
        case let.middle(name):
            return name
        case let.high(name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "선유중")

print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")
