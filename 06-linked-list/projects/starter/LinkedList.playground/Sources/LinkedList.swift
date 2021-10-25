import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    public var isEmpty: Bool {
        return head == nil
    }
    
    public init() {
        
    }
    
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: Value) {

      // 1
      guard !isEmpty else {
        push(value)
        return
      }

      // 2
      tail!.next = Node(value: value)

      // 3
      tail = tail!.next
    }

    
}

extension LinkedList: CustomStringConvertible {

  public var description: String {
    guard let head = head else {
      return "Empty list"
    }
    return String(describing: head)
  }
}
