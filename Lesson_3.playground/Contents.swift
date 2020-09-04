import UIKit

////(String, String, String)
//enum PrintFioMode: String
//{
//    case full = "Подробный режим"
//    case middle = "обычный режим"
//    case short = "сокращённый режим"
//}
//
//
//
//let fio =
//[
//    ("Иванов", " Иван", "Иванович"),
//    ("Петров", " Перт", "Петрович"),
//    ("Александров", " Александр", "Александрович")
//]
//
////func printFio(_ fio: [(String, String, String)], mode: Int)
////{
////    for item in fio
////    {
////        switch mode
////        {
////        case 1:
////            print(item.0, item.1, item.2)
////        case 2:
////            print(item.0, item.1)
////        case 3:
////            print(item.0)
////        default:
////            print("Ошибка! Такой режим не поддерживается!")
////        }
////    }
////}
//
//
//func printFio(_ fio: [(String, String, String)], mode: PrintFioMode)
//{   print(mode.rawValue)
//    for item in fio
//    {
//        switch mode
//        {
//        case .full:
//            print(item.0, item.1, item.2)
//        case .middle:
//            print(item.0, item.1)
//        case .short:
//            print(item.0)
//        }
//    }
//}
//
////printFio(<#T##fio: [(String, String, String)]##[(String, String, String)]#>, mode: 1)
//printFio(fio, mode: .middle)






enum HondaDoorState {
    case open, close
}

enum Transmission  {
    case manual, auto
}



struct Honda
{
    mutating func run() {
        state.toggle ()
    }
}
{
    let color: UIColor
    let mp3: Bool
    let transmission: Transmission
    var km: Double
    {
        didSet
        {
            let diatance = km - oldValue
            print("Автомобиль прошёл расстовяние в \(diatance) км")
        }
    }
    var state: Bool{
        willSet{
            if newValue == true {
                print("Сейчас машина заведётся")
            } else {
                print("Сейчас машина остановится")
            }
        }}
    
}

let car1 = Honda(color: .white, mp3: true, transmission: .auto, km:12, state: false)
let car2 = Honda(color: .red, mp3: false, transmission: .manual, km:39, state: false)
let car3 = Honda(color: .blue, mp3: true, transmission: .auto, km:58, state: false)

print(car1.mp3)


//
//let car1Color = UIColor.white
//let car1Mp3 = true
//let car1Transmission = Transmission.auto
//
//
//let car2Color = UIColor.red
//let car2Mp3 = false
//let car2Transmission = Transmission.manual
//
//let car3Color = UIColor.blue
//let car3Mp3 = true
//let car3Transmission = Transmission.auto



//struct Circle
//{
//    var radius: Double
//    var diametr: Double
//    {
//        get
//        {
//            return radius * 2
//        }
//        set
//        {
//            radius = newValue / 2
//        }
//    }
//}



struct Circle
{
    var radius: Double
    var diametr: Double
    {
        ditSet
        {
            print("Димаетр изменился на \(oldValue§)")
        }
           get
        {
            return radius * 2
        }
        set
        {
            radius = newValue / 2
        }
    }
}

let circle = Circle(radius: <#T##Double#>)





