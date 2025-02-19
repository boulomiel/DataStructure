//
//  QueueArray.swift
//  DataStructcture
//
//  Created by Ruben Mimoun on 22/01/2025.
//

public struct QueueArray<T>: QueueProtocol {
    
    private var array: [T] = []
    public init() {}
    
    public var isEmpty: Bool {
        array.isEmpty
    }
    
    public var peek: T? {
        array.first
    }
    
    public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    public mutating func dequeue() -> T? {
        isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
    
    public var description: String {
        String(describing: array)
    }
}
