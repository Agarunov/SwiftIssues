import UIKit

class Base {

    class Constants {
        static let base: Int = 1
    }
    
}

class Derived: Base {

    class Constants {
        static let derived: Int = 2
    }

    static func staticMethod() {
        print(Constants.base) // error: Type 'Derived.Constants' has no member 'base'
        print(Constants.derived)
    }
    
    func instanceMethod() {
        print(Constants.base) // error: Type 'Derived.Constants' has no member 'base'
        print(Constants.derived)
    }
}
