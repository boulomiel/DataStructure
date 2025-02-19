//
//  Vertex.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

public struct Vertex<T> {
    
    public let index: Int
    public let data: T
}

extension Vertex: Hashable where T: Hashable {}
extension Vertex: Equatable where T: Equatable {}

extension Vertex: CustomStringConvertible {
    
    public var description: String {
        "\(index): \(data)"
    }
}
