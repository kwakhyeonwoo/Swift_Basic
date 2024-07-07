import UIKit

var count : Int = 0

while count < 5 {
    count += 1
    print("index: \(count)")
    
    if count == 3 {
        break
    }
}
