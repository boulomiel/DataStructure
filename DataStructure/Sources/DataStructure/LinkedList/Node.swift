//
//  Node.swift
//  DataStructcture
//
//  Created by Ruben Mimoun on 22/01/2025.
//

// MARK: - Doubly-Linked List
public class Node<T> {
    
    public var value: T
    public var next: Node<T>?
    public var previous: Node<T>?
    
    public init(value: T) {
        self.value = value
    }
    
    public init(value: T, next: Node<T>?) {
        self.value = value
        self.next = next
    }
    
    public init(value: T, next: Node<T>?, previous: Node<T>?) {
        self.value = value
        self.next = next
        self.previous = previous
    }
}

extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        guard let previous = previous  else {
            return "\(value) -> \(next)"
        }
        return "\(previous) -> \(value) -> " + String(describing: next) + " "
    }
}
