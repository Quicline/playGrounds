import Cocoa

/*
    
 Your challenge is this: make a class hierarchy for animals, starting with Animal at the top,
 then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and
 Lion as subclasses of Cat.

 But there’s more:

 1. The Animal class should have a legs integer property that tracks how many legs the animal
 has.
 
 2. The Dog class should have a speak() method that prints a generic dog barking string, but
 each of the subclasses should print something slightly different.
 
 3. The Cat class should have a matching speak() method, again with each subclass printing
 something different.
 
 4. The Cat class should have an isTame Boolean property, provided using an initializer.
 
*/

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof Im a dog")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Woof Im a Corgi dog")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Woof Im a Poodle dog")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool,legs:Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    func speak() {
        print("Meaw Im a cat")
    }
}

class Persian: Cat {
    override func speak() {
        print("Meaw Im a Persian cat")
    }
}

class Lion: Cat {
    override func speak() {
        print("Meaw Im a Lion cat")
    }
}
