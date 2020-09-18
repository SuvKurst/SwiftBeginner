import UIKit

enum doorsError: Error
{
    case carIsMove
    case doorsOpenAlready
}

enum speedError: Error
{
    case engineIsNotOn
    case carCant
}

enum StatusDoors
{
    case opend, close
}

class Car
{
    var engine: Bool
    var speed: Int
    let maxSpeed: Int
    var doors: StatusDoors
    
    init(engine: Bool, speed: Int, maxSpeed: Int, doors: StatusDoors)
    {
        self.doors = doors
        self.engine = engine
        self.speed = speed
        self.maxSpeed = maxSpeed
    }
    func openTheDoor() -> doorsError?
    {
        guard self.doors == .close else {
            return doorsError.doorsOpenAlready
        }
        guard self.speed == 0 else {
            return doorsError.carIsMove
        }
        self.doors = .opend
        return nil
    }
    func accelerate(speedInc: Int) throws -> Int
    {
        guard self.engine == true else
        {
            throw speedError.engineIsNotOn
        }
        guard self.speed + speedInc < maxSpeed else {
            throw speedError.carCant
        }
        self.speed += speedInc
        return self.speed
    }
}

var machina = Car(engine: true, speed: 0, maxSpeed: 120, doors: .close)


machina.openTheDoor()

do
{
    try machina.accelerate(speedInc: 20000)
}   catch speedError.engineIsNotOn
    { print("Двигатель не заведён")}
    catch speedError.carCant
    { print("Скорость превышает допустимые значения СПИДОметра")}
    catch let error {print(error.localizedDescription)}



