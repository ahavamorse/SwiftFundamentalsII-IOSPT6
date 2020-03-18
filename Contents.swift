import UIKit

// Enum - Enumeration

enum AppleProducts: String {
    case iPhone
    case iPad
    case macBook
    case watch = "Apple Watch"
}

print(AppleProducts.watch.rawValue)

enum PizzaCategory: String {
    case classic
    case specialty
    case glutenFree
}

let specialtyPizza = PizzaCategory.specialty
let myFavoritePizza: PizzaCategory = .classic

print(myFavoritePizza)

