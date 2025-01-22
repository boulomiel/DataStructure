//
//  HeapSort.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

public extension Heap {
    
    func sorted() -> [Element] {
        var heap = Heap(sort: sort, elements: elements)
        for index in heap.elements.indices.reversed() {
            heap.elements.swapAt(0, index)
            heap.siftDown(from: 0, upTo: index)
        }
        return heap.elements
    }
}
