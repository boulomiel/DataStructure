//
//  QueueLinkedList.swift
//  DataStructcture
//
//  Created by Ruben Mimoun on 22/01/2025.
//

// MARK: - LinkedList-based Queue
public class QueueLinkedList<T>: QueueProtocol {
    
    private var list = DoublyLinkedList<T>()
    public init() {}
    
    public func enqueue(_ element: T) -> Bool {
        list.append(element)
        return true
    }
    
    public func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first else {
            return nil
        }
        return list.remove(element)
    }
    
    public var peek: T? {
        list.first?.value
    }
    
    public var isEmpty: Bool {
        list.isEmpty
    }
}

extension QueueLinkedList: CustomStringConvertible {
    
    public var description: String {
        String(describing: list)
    }
}
