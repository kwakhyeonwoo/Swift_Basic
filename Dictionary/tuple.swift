import UIKit

var myPet : (name : String, kind : String, age : Int) = (name : "초코", kind : "강아지", age : 3)
myPet.2

//이런식으로 자료형 key를 안써도 가능함. 하지만 접근할때 해당 변수의 index로만 접근이 가능
var myCat : (String, String, age : Int) = ("나비", "고양이", age : 2)
myCat.1
