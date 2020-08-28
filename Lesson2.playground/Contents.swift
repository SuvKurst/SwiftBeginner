import UIKit

let a = 5
var b = 3
var c = a
//a = 2
print(c)

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

enum settings: String {
    case a
    case b
}

var settingsAudio: settings = .a


switch settingsAudio {
case .a:
    print("A")
case .b:
    print("B")
    }


/*switch a  {
case 0:
    print("А - равен 0")
case 10:
    print("А - равен 10")
default:
    print("Мы ничего не нашли")
}*/



