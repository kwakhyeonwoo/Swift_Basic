import UIKit

//튜플 - 밑에처럼 myPet의 값을 새로 넣으면 기존의 초코,강아지,3의 값은 날라가고 새로 정의된 값이 myPet으로 들어감
var myPet : (name : String, kind : String, age : Int) = (name : "초코", kind : "강아지", age : 3)
myPet = (name: "나비", kind: "강아지", age: 2)
myPet.name

//이런식으로 자료형 key를 안써도 가능함. 하지만 접근할때 해당 변수의 index로만 접근이 가능
var myCat : (String, String, age : Int) = ("나비", "고양이", age : 2)
myCat.1
