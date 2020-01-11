import DifferenceKit

final class AnyDiffableSection: DifferentiableSection {

    let elements: [AnyDiffable]
        
    init<C>(source: AnyDiffableSection, elements: C) where C: Collection, C.Element == AnyDiffable {
        self.elements = Array(elements)
    }
    
    func isContentEqual(to source: AnyDiffableSection) -> Bool {
        true
    }
    
    var differenceIdentifier: String {
        "string"
    }

}
