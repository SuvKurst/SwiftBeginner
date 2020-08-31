import UIKit

var a = 5
var b = 3
var c = 7
//a = 2
//print(c)

//a = a + 1
//a += 2

var value: Bool = true
!value

//MARK: if
/*if a >= 4 {
    print("А больше или равно 4х")
} else if b == 0 {
    print("А меньше 4х")
    print("В равен нулю")
} else {
    print("А - меньше 4х")
    print("В - не равен 0")
}

if a == 0 {
    print("А - равно нулю")
}
//Если а не будет равна нулю, то этот блок кода не будет запущен

a > 10 ? print("А - больше 10") : print("А меньше 10")*/

//enum settings: String {
//    case a
//    case b
//}
//
//var settingsAudio: settings = .a
//
//
//switch settingsAudio {
//case .a:
//    print("A")
//case .b:
//    print("B")
//    }
//
//switch a  {
//case 0:
//    print("А - равен 0")
//case 10:
//    print("А - равен 10")
//default:
//    print("Мы ничего не нашли")
//}

//var array = [a, b, c]
//
//for item in array {
//    var item = item + 1
//    print(item)
//}
//
//for i in 0..<array.count {
//    print(array[i])
//}
//
//while a > 0 {
//    print("a")
//    a -= 1
//}

//func sumNumber(){
//    var d = a + b
//    print(d)
//}
//
//func sumNumber() -> Int {
//    let d = a + b
//    return d
//}
//sumNumber()
//print(sumNumber)



func divNumber(_ num1: Int, _ num2: Int?) -> Int? {
    
    //guard num2 != 0 else { return nil }
    
    guard let n = num2, n != 0 else { return nil}
    
    let d = num1 / n
    return d
}

//let sum = sumNumber(num1: 8, num2: 6)

//let sum = sumNumber(8, 6)

let div = divNumber(3, nil)
print(div)




