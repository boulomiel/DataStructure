//
//  Queue.swift
//  DataStructcture
//
//  Created by Ruben Mimoun on 22/01/2025.
//

public protocol QueueProtocol {
    
    associatedtype Element
    mutating func enqueue(_ element: Element) -> Bool
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}
