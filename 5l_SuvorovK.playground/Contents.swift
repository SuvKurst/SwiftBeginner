import UIKit

protocol Car
{
    var mark: String { get set }
    var color: UIColor { get set }
    var yearManufacturing: Int { get set }
    var engine: EngineStatus { get set }
    func statusEngine()
}

enum EngineStatus
{
    case on, off
}

extension Car
{
    func statusEngine (type: EngineStatus) {
        switch type {
        case .on:
            print("Engine turn on!")
        case .off:
            print("Engine turn off!")
        }
    }
}

enum Trailer
{
    case attached, unattached
}
class TrunkCar: Car
{
    var engine: EngineStatus
    var mark: String
    var color: UIColor
    var yearManufacturing: Int
    var trailer: Trailer
    func statusEngine(){   }
    
    init(mark: String, color: UIColor, yearManufacturing: Int, engine: EngineStatus, trailer: Trailer)
    {
        self.color = color
        self.mark = mark
        self.engine = engine
        self.yearManufacturing = yearManufacturing
        self.trailer = trailer
    }
}

extension TrunkCar: CustomStringConvertible
{
    var description: String {
        return "\(mark), \(color), \(engine), \(yearManufacturing), \(trailer)"
    }
}

var maz = TrunkCar(mark: "Kamaz", color: .black, yearManufacturing: 2009, engine: .on, trailer: .attached)
maz.statusEngine(type: .off)
print(maz)

class SportCar: Car
{
    var mark: String
    var color: UIColor
    var yearManufacturing: Int
    var engine: EngineStatus
    var hasSpoiler: Bool
    var hasN2O: Bool
    func statusEngine() {}
    init(mark: String, color: UIColor, yearManufacturing: Int, engine: EngineStatus, hasSpoiler: Bool, hasN2O: Bool)
    {
        self.color = color
        self.mark = mark
        self.engine = engine
        self.yearManufacturing = yearManufacturing
        self.hasSpoiler = hasSpoiler
        self.hasN2O = hasN2O
    }
}

extension SportCar: CustomStringConvertible
{
    var description: String {
        return "\(mark), \(color), \(engine), \(yearManufacturing), \(hasSpoiler), \(hasN2O)"
    }
}

var impala77 = SportCar(mark: "Chevrolet", color: .red, yearManufacturing: 1977, engine: .on, hasSpoiler: false, hasN2O: false)
impala77.statusEngine(type: .off)

print(impala77)
