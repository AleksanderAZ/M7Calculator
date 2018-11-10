import UIKit

var str = "Hello, playground"
func printA(_ string: String, count index: Int) -> Bool {
    func a() -> Bool {
        print(index)
        return false
    }
    
    print(string.uppercased())
    return a()
}


printA(str, count: 0)


