import Foundation
import DifferenceKit

class AnyDiffable: Differentiable {
    
    var differenceIdentifier: String {
        "string"
    }
    
    func isContentEqual(to source: AnyDiffable) -> Bool {
        true
    }    
}
