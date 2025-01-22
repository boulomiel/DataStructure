//
//  AdjacencyMatrix.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

public class AdjacencyMatrix<T>: Graph {
    
    private var vertices: [Vertex<T>] = []
    private var weights: [[Double?]] = []
    
    public init() {}
    
    public func createVertex(data: T) -> Vertex<T> {
        let vertex = Vertex(index: vertices.count, data: data)
        vertices.append(vertex)
        for i in 0..<weights.count {
            weights[i].append(nil)
        }
        let row = [Double?](repeating: nil, count: vertices.count)
        weights.append(row)
        return vertex
    }
    
    public func addDirectedEdge(from source: Vertex<T>, to destination: Vertex<T>, weight: Double?) {
        weights[source.index][destination.index] = weight
    }
    
    public func edges(from source: Vertex<T>) -> [Edge<T>] {
        var edges: [Edge<T>] = []
        for column in 0..<weights.count {
            if let weight = weights[source.index][column] {
                edges.append(Edge(source: source, destination: vertices[column], weight: weight))
            }
        }
        return edges
    }
    
    public func weight(from source: Vertex<T>, to destination: Vertex<T>) -> Double? {
        weights[source.index][destination.index]
    }
}

extension AdjacencyMatrix: CustomStringConvertible {
    
    public var description: String {
        // 1
        let verticesDescription = vertices.map { "\($0)" }.joined(separator: "\n")
        // 2
        var grid: [String] = []
        for i in 0..<weights.count {
            var row = ""
            for j in 0..<weights.count {
                if let value = weights[i][j] {
                    row += "\(value)\t"
                } else {
                    row += "ø\t\t"
                }
            }
            grid.append(row)
        }
        let edgesDescription = grid.joined(separator: "\n")
        // 3
        return "\(verticesDescription)\n\n\(edgesDescription)"
    }
}

extension Graph where Element: Hashable {
    
  public func numberOfPaths(from source: Vertex<Element>, to destination: Vertex<Element>) -> Int {
    var numberOfPaths = 0
    var visited: Set<Vertex<Element>> = []
    paths(from: source, to: destination, visited: &visited, pathCount: &numberOfPaths)
    return numberOfPaths
  }
  
  func paths(from source: Vertex<Element>,
             to destination: Vertex<Element>,
             visited: inout Set<Vertex<Element>>,
             pathCount: inout Int) {
    visited.insert(source)
    if source == destination {
      pathCount += 1
    } else {
      let neighbors = edges(from: source)
      for edge in neighbors {
        if !visited.contains(edge.destination) {
          paths(from: edge.destination, to: destination, visited: &visited, pathCount: &pathCount)
        }
      }
    }
    // Remove the vertex from the visited list, so you can find other paths to that node.
    visited.remove(source)
  }
}
