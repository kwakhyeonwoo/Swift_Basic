import UIKit

var greeting = "Hello Playground"

func someFunctionWithTrailingClosure(name : String = "", completion: () -> Void){
    print(#fileID, #function, #line, "- ")
    completion()
}

someFunctionWithTrailingClosure (completion: {
    print(#fileID, #function, #line, "- hi 1")
})

//completion 부분 생략
someFunctionWithTrailingClosure {
    print(#fileID, #function, #line, "- hi 2")
}

func someFunctionWithClosure(first: () -> Void,
                             second: (String) -> Void,
                             thrid: (Int) -> Void) {
    print(#fileID, #function, #line, "- ")
    first()
    second("현우")
    thrid(3)
}

//someFunctionWithClosure(first: {
//    
//}, second: {
//    
//}, thrid: {
//    
//})

someFunctionWithClosure{
    print("first")
} second: { string in
    print("string: \(string)")
} thrid: { number in
    print("thrid: \(number)")
}
