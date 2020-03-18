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
    private(set) var pizzas: [Pizza]
    
    // Create Initializer
    init(name: String, address: String) {
        self.name = name
        self.address = address
        self.pizzas = []
    }
    
    func add(Pizza) {
        pizzas.append(pizza)
        
    }
}

let johnnyPizzaPlace = PizzaPlace(name: "Johnny's Pizza", address: "123 Delicious Ave")

let hawaiianClassic = Pizza(name: "Hawaiian Classic", cost: 12.99, category: .classic)
let chickenAlfredo = Pizza(name: "Call Me Mr. Alfredo", cost: 15.99, category: .specialty)
let margarita = Pizza(name: "Margarita Seniorita", cost: 16.99, category: .glutenFree)

johnnyPizzaPlace.add(pizza: hawaiianClassic)
johnnyPizzaPlace.add(pizza: chickenAlfredo)
johnnyPizzaPlace.add(margarita)
