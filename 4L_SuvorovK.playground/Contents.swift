import UIKit

class car
{
    enum Engine{case on, off}
    enum Window{case open, close}
    let mark: String
    let yearManufacturing: Int
    let vTrunk: Double
    var engine: Engine
    
    init(mark: String, yearManufacturing: Int, vTrunk: Double, engine: Engine) {
        self.mark = mark
        self.yearManufacturing = yearManufacturing
        self.vTrunk = vTrunk
        self.engine = engine
    }
    
    func statusEngine(_ engine: Engine)
    {
        self.engine = engine
        switch engine {
        case .on:
            print("Двигатель заведён")
        case .off:
            print("Двигатель заглушен")
        }
    }
    func openSmthg(){}
    func closeSmthg(){}
}

class trunkCar : car
{
    enum trunkStatus{case open, close}
    var trunk: trunkStatus
    init(mark: String, yearManufacturing: Int, vTrunk: Double, engine: car.Engine, trunk: trunkStatus)
    {
        self.trunk = trunk
        super.init(mark: mark, yearManufacturing: yearManufacturing, vTrunk: vTrunk, engine: engine)
    }
    override func statusEngine(_ engine: Engine) {
        super.statusEngine(engine)
    }
    override func openSmthg()
    {
        self.trunk = .open
        print("Багажник открыт!")
    }
    override func closeSmthg()
    {
        self.trunk = .close
        print("Багажник закрыт!")
    }
}


class sportCar : car
{
    enum hatchStatus{case open, close}
    var hatch: hatchStatus
    init(mark: String, yearManufacturing: Int, vTrunk: Double, engine: car.Engine, hatch: hatchStatus)
    {
        self.hatch = hatch
        super.init(mark: mark, yearManufacturing: yearManufacturing, vTrunk: vTrunk, engine: engine)
    }
    override func statusEngine(_ engine: Engine) {
        super.statusEngine(engine)
    }
    override func openSmthg()
    {
        self.hatch = .open
        print("Люк открыт!")
    }
    override func closeSmthg()
    {
        self.hatch = .close
        print("Люк *Я ТВОЙ ОТЕЦ* закрыт!")
    }
}


var markII = trunkCar(mark: "Toyota", yearManufacturing: 1985, vTrunk: 1000, engine: .off, trunk: .open)
markII.statusEngine(.on)
markII.closeSmthg()

var priora = trunkCar(mark: "LADA", yearManufacturing: 1882, vTrunk: 0.5, engine: .on, trunk: .close)
priora.statusEngine(.off)
priora.openSmthg()

var tesla = sportCar(mark: "Tesla", yearManufacturing: 2009, vTrunk: 10, engine: .on, hatch: .open)
tesla.closeSmthg()
tesla.statusEngine(.off)

var impala77 = sportCar(mark: "Chevrolet", yearManufacturing: 1977, vTrunk: 130, engine: .off, hatch: .close)
impala77.statusEngine(.on)
impala77.openSmthg()



