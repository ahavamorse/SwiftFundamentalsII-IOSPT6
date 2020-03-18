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

// Difference between Value Types and Referance Types

// Struct = Value Type
struct Ticket {
    
}

var ticket = Ticket(name: "Bob")
print(ticket.name)

var ticketCopy = ticket

ticketCopy.name = "Johnny"

print("ticket: \(ticket.name))")
print("ticketCopy: \(ticketCopy.name)")

func changeTicketName(ticket: Ticket) {
    var updatedTicket = ticket
    updatedTicket.name = "John"
    print("updatedTicket: \(updatedTicket.name)")
}

print("Ticket: \(ticket.name)")
changeTicketName(ticket: ticket)
print("Ticket: \(ticket.name)")


// Referance Types: class

class City {
    var name: String
    var population: Int
    
    init(name: String, population: Int) {
        self.name = name
        self.population = population
    }
}

let rochester = City(name: "Rochester, NY", population: 208_000
let roc = rochester
roc.name = "ROC"

print("rochester: \(rochester.name)")
print("roc: \(roc.name)")

func increasePopulation(city: City) {
    city.population = city.population + 1
}

print("Rochester population: \(rochester.population)")
increasePopulation(city: rochester)
print("Rochester population: \(rochester.population)")

print(roc.population)


// var versus let in structs and classes

struct Person {
    var name: String
    var age: Double
}

let me = Person(name: "Ahava", age: 16)
me.age = 17

print(me.age)

class Person2 {
    var name: String
    var age: Double
    
    init(name: String, age: Double) {
        self.name = name
        self.age = age
    }
}

let me2 = Person2(name: "AhavaM", age: 16)
me2.age = 29

class Vacuum {
    var isOn: Bool = false
    var isPluggedIn: Bool = false
    var rugHeight: Int = 5
    var isSelfDriving: Bool
    var attachments: [String]
    
    init(isSelfDriving: Bool = false, attachments: [String] = []) {
        self.isSelfDriving = isSelfDriving
        self.attachments = attachments
    }
}

let sharkVacuum = Vacuum(isSelfDriving: false, attachments: ["Dusting Brush", "Crevice Tool"])

let roombaVacuum = Vacuum(isSelfDriving: true)
print(roombaVacuum)





