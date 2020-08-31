import UIKit


//Функция определения четного числа
func isEven(num : Int) -> String
{
    if (num % 2 == 0) {return ("Число чётное")}
    else {return "Число не чётное"}
}

var a = 31
print(isEven(num: a))


//Функция определения числа которое не делится на 3
func isDividedByThree(num : Int) -> String
{
    if (num % 3 == 0) {return ("Число делится на 3")}
    else {return "Число не делится на 3"}
}

var b = 143

print(isDividedByThree(num: b))


//Создание возрастающего массива
var numbers : [Int] = []
var i : Int = 1

for _ in 1...100
{
    numbers.append(i)
    i += 1
}
print(numbers)

//удаление из массива не чётных чисел и не кратных 3м
var position : Int? = 0

for element in numbers
{
    if element % 2 == 0 || element % 3 != 0
    {
        position = numbers.firstIndex(of: element)
        numbers.remove(at: position ?? <#default value#>)
    }
}

print(numbers)

//Создание массива и наполнение его последовательностью чисел Фибонначи
var arrayFibo : [Double] = [1]
func fibo(_ arrayFibo: inout [Double])
{
    if arrayFibo.count < 2 { arrayFibo.append(1) }
    else { arrayFibo.append(arrayFibo[arrayFibo.count - 1] + arrayFibo[arrayFibo.count - 2]) }
}

for _ in 1...100
{
    fibo(&arrayFibo)
}

print(arrayFibo)

//Нахождение простых числе по методу Эратосфена
var newNumbers : [Int] = []
var j : Int = 1
for _ in 1...1000
{
    newNumbers.append(j)
    j += 1
}

var primeNumbers : [Int] = [1]
var start : Int = 2
for _ in 1...99
{
    primeNumbers.append(newNumbers[start - 1])
    for newNumber in newNumbers where newNumber > newNumbers[start]
    {
        if newNumber % newNumbers[start - 1] == 0
        {
            newNumbers.remove(at: newNumbers.firstIndex(of: newNumber)!)
        }
    }
    start += 1
}

print(primeNumbers)
print(primeNumbers.count)
