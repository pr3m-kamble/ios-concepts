import Foundation

// Enum is the same as Struct expect we know all cases at runtime

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}
// Enum are stored in memory the same way as a Struct we cannot mutate them
enum CarBrandOption {
    //case Toyota,Honda,Ford
    case Toyota
    case Honda
    case Ford
    
    var title: String{
        switch self {
        case .Ford:
            return "Ford"
        case .Toyota:
            return "Toyota"
//        case .Honda:
//            return "Honda"
        default:
            return "Default Value"
        }
        
        //        if self == .Ford{
        //            return "Ford"
        //        } else if self == .Ford{
        //            return "Toyota"
        //        } else {
        //            return "Default Value"
        //        }
    }
}
//
//var car1: CarModel = CarModel(brand: "Toyota"", model: "Corolla")
//var car2: CarModel = CarModel(brand: "Honda", model: "Civic")
//var car3: CarModel = CarModel(brand: "Ford", model: "Mustang")

//var brand1 = CarBrand(title: "Toyota")
//var brand2 = CarBrand(title: "Honda")
//var brand3 = CarBrand(title: "Ford")
//
//
//var car1 = CarModel(brand: brand1, model: "Corolla")
//var car2 = CarModel(brand: brand2, model: "Civic")
//var car3 = CarModel(brand: brand3, model: "Mustang")

var car1: CarModel = CarModel(brand: .Toyota, model: "Corolla")
var car2: CarModel = CarModel(brand: .Honda, model: "Civic")
var car3: CarModel = CarModel(brand: .Ford, model: "Mustang")
 
var FordBrand: CarBrandOption = .Ford
print(FordBrand.title)
