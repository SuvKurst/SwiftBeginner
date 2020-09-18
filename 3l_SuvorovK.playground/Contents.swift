import UIKit



struct car
{
    enum Engine
    {
    case on, off
    }
    enum Window
    {
    case open, close
    }
    let mark: String
    let yearManufacturing: Int
    let vTrunk: Double
    var engine: Engine
    mutating func statusEngine(_ engine: Engine)
    {
        self.engine = engine
        switch engine {
        case .on:
            print("Двигатель заведён")
        case .off:
            print("Двигатель заглушен")
        }
    }
    var window: Window
    mutating func statusWindow(_ window: Window)
    {
        self.window = window
        switch window {
        case .open:
            print("Окна открыты")
        case .close:
            print("Окна закрыты")
        }
    }
    var luggage: Double
    mutating func fillingLuggage(_ luggage: Double)
    {
        if luggage >= self.vTrunk { print("Вы пытаетесь загрузить больше максимального объёма")}
        else
        {
            self.luggage += luggage
            print("В багажнике осталось \(self.vTrunk - self.luggage) литра(-ов) свободного места")
        }
    }
    mutating func dischargingLuggage(_ luggage: Double)
    {
        if luggage >= self.luggage { print("Вы пытаетесь выгрузить больше чем у Вас есть.")}
        else
        {
            self.luggage -= luggage
            print("В багажнике осталось \(self.vTrunk - self.luggage) литра(-ов) свободного места")
        }
    }
}


var sportCar = car(mark: "BMW", yearManufacturing: 2005, vTrunk: 100, engine: .off, window: .open, luggage: 20)
sportCar.fillingLuggage(20)
sportCar.dischargingLuggage(3.4)
sportCar.statusWindow(.close)
sportCar.statusEngine(.on)
print(sportCar)

var trunkeCar = car(mark: "KAMAZ", yearManufacturing: 1998, vTrunk: 1000, engine: .off, window: .close, luggage: 200)
trunkeCar.fillingLuggage(2)
trunkeCar.dischargingLuggage(12)
trunkeCar.statusEngine(.on)
trunkeCar.statusWindow(.open)
print(trunkeCar)

