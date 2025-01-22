//
//  Edge.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

public struct Edge<T> {
    
    public let source: Vertex<T>
    public let destination: Vertex<T>
    public let weight: Double?
}
