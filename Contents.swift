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

struct Pizza {
    let name: String
    let cost: Double
    let category: PizzaCategory
}

let myPizza = Pizza(name: "49-er", cost: 12.99, category: .classic)
print("I would like to order a \(myPizza.name)")

class PizzaPlace {
    var name: String
    var address: String
    var pizzas: [Pizza]
    
    // Create Initializer
    init(name: String, address: String) {
        self.name = name
        self.address = address
        self.pizzas = []
    }
}

let johnnyPizzaPlace = PizzaPlace(name: "Johnny's Pizza", address: "123 Delicious Ave")
