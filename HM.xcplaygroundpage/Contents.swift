import UIKit
//Квадратное уравение
//x2-12x+35=0

let a : Double = 1
let b : Double = -12
let c : Double = 35
let discriminant : Double = b*b - 4*a*c
let x1 : Double = ((-b + sqrt(discriminant)) / (2*a))
let x2 : Double = ((-b - sqrt(discriminant)) / (2*a))

print("Корень 1 равен: \(x1)")
print("Корень 2 равен: \(x2)")

//Работа с треугольником
let a1 : Double = 3
let b1 : Double = 4
let c1 : Double  = sqrt(a1*a1 + b1*b1) //Высчитываем гипотенузу.
let perimeter : Double = a1+b1+c1 //Высчитываем периметр.
let area : Double = a1*b1 / 2

print("Периметр равен: \(perimeter)")
print("Гипотенуза равна: \(c1)")
print("Площадь равна: \(area)")


//Расчет суммы вклада

var summ : Double = 1000
let percent : Double = 5.5

for _ in 1...5 {
    summ = summ * (1+percent/100)
}
print("Сумма вклада через 5 лет равна: \(summ)")
