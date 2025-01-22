//
//  TreeNodeTests.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

import XCTest
@testable import DataStructure

final class TreeNodeTests: XCTestCase {
    
    func testTreeNodeInitialization() {
        let root = TreeNode("Root")
        XCTAssertEqual(root.value, "Root")
        XCTAssertTrue(root.children.isEmpty)
    }
    
    func testAddChild() {
        let root = TreeNode("Root")
        let child1 = TreeNode("Child1")
        let child2 = TreeNode("Child2")
        
        root.add(child1)
        root.add(child2)
        
        XCTAssertEqual(root.children.count, 2)
        XCTAssertEqual(root.children[0].value, "Child1")
        XCTAssertEqual(root.children[1].value, "Child2")
    }
    
    func testForEachDepthFirst() {
        let root = TreeNode("Root")
        let child1 = TreeNode("Child1")
        let child2 = TreeNode("Child2")
        let grandChild = TreeNode("GrandChild")
        
        root.add(child1)
        root.add(child2)
        child1.add(grandChild)
        
        var visitedValues: [String] = []
        root.forEachDepthFirst { node in
            visitedValues.append(node.value)
        }
        
        XCTAssertEqual(visitedValues, ["Root", "Child1", "GrandChild", "Child2"])
    }
    
    func testSearchExistingNode() {
        let root = TreeNode("Root")
        let child1 = TreeNode("Child1")
        let child2 = TreeNode("Child2")
        let grandChild = TreeNode("GrandChild")
        
        root.add(child1)
        root.add(child2)
        child1.add(grandChild)
        
        let searchResult = root.search("GrandChild")
        XCTAssertNotNil(searchResult)
        XCTAssertEqual(searchResult?.value, "GrandChild")
    }
    
    func testSearchNonExistingNode() {
        let root = TreeNode("Root")
        let child1 = TreeNode("Child1")
        let child2 = TreeNode("Child2")
        
        root.add(child1)
        root.add(child2)
        
        let searchResult = root.search("NonExistingNode")
        XCTAssertNil(searchResult)
    }
}
