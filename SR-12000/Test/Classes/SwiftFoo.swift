import Foundation

class Value {

}

enum BarEnum {
    case first(Value)
    case second
}

final class SwiftFoo: ObjcFoo {
    
    func doSomething() {
        let value = BarEnum.second
        array.add(value)
        // Abort trap: 6
        // Assertion failed: (v.getType().isTrivial(SGF.F) || v.hasCleanup()), function emitNativeToCBridgedNonoptionalValue, file /Users/buildnode/jenkins/workspace/oss-swift-5.2-package-osx/swift/lib/SILGen/SILGenBridging.cpp, line 733.
    }
    
}
