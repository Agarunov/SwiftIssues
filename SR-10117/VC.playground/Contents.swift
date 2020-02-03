import Foundation

let strs: [[String]] = [["adfasdf", "adfasf"], ["sdghdgfh", "hjfhgjfg"], ["dfghfgd", "5t345", "sdfsdfs"]]

extension Collection {
    func map<R>(_ keyPath: KeyPath<Element, R>) -> [R] {
        return map { $0[keyPath: keyPath] }
    }
}

let s = strs.map(\.first)
// error: Execution was interrupted, reason: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0).
// The process has been left at the point where it was interrupted, use "thread return -x" to return to the state before expression evaluation.
// In Console: Fatal error: load from misaligned raw pointer
