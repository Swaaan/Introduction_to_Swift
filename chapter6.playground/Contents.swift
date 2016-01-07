//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Car {
    var distance = 0
    func srop() {
        print( "止まる" )
    }
}

class Sport: Car {
    func drive() {
        distance += 10
    }
}

class Truck: Car {
    func drive() {
        distance += 5
    }
}

var sport = Sport()
var truck = Truck()

sport.srop()
truck.srop()
class view: UIViewController {
    
}


//06-06

class Cat {
    func run() {
        print( "走る" )
    }
}

class dog: Cat {
    override func run() {
        print( "時速100キロ" )
        super.run()
    }
}


var Dog = dog()
Dog.run()


//06-07

var age:Int? = nil
var agee:Int? = -5
print(agee! + 1)

var ageee:Int! = -5
print(ageee + 10)













