//
//  TrieTests.swift
//  DataStructure
//
//  Created by Ruben Mimoun on 22/01/2025.
//

import XCTest

@testable import DataStructure

final class TrieTests: XCTestCase {
    
    func testInsertAndContains() {
        let trie = Trie<String>()
        trie.insert("cat")
        trie.insert("car")
        trie.insert("dog")
        
        XCTAssertTrue(trie.contains("cat"))
        XCTAssertTrue(trie.contains("car"))
        XCTAssertTrue(trie.contains("dog"))
        XCTAssertFalse(trie.contains("bat"))
        XCTAssertFalse(trie.contains("do"))
    }
    
    func testRemove() {
        let trie = Trie<String>()
        trie.insert("cat")
        trie.insert("car")
        trie.insert("dog")
        
        XCTAssertTrue(trie.contains("car"))
        
        trie.remove("car")
        
        XCTAssertFalse(trie.contains("car"))
        XCTAssertTrue(trie.contains("cat"))
        XCTAssertTrue(trie.contains("dog"))
        
        trie.remove("cat")
        
        XCTAssertFalse(trie.contains("cat"))
    }
    
    func testRemoveNonexistentElement() {
        let trie = Trie<String>()
        trie.insert("cat")
        trie.insert("car")
        
        XCTAssertFalse(trie.contains("dog"))
        
        trie.remove("dog") // Should not affect the Trie
        
        XCTAssertTrue(trie.contains("cat"))
        XCTAssertTrue(trie.contains("car"))
    }
    
    func testCollectionsStartingWithPrefix() {
        let trie = Trie<String>()
        trie.insert("cat")
        trie.insert("car")
        trie.insert("cart")
        trie.insert("dog")
        trie.insert("door")
        trie.insert("dorm")
        
        let resultsWithCa = trie.collections(startingWith: "ca")
        XCTAssertEqual(Set(resultsWithCa), Set(["cat", "car", "cart"]))
        
        let resultsWithDo = trie.collections(startingWith: "do")
        XCTAssertEqual(Set(resultsWithDo), Set(["dog", "door", "dorm"]))
        
        let resultsWithNonExistentPrefix = trie.collections(startingWith: "xyz")
        XCTAssertEqual(resultsWithNonExistentPrefix, [])
    }
    
    func testEmptyTrie() {
        let trie = Trie<String>()
        XCTAssertFalse(trie.contains("anything"))
        
        let results = trie.collections(startingWith: "any")
        XCTAssertEqual(results, [])
    }
    
    func testPrefixThatIsNotTerminating() {
        let trie = Trie<String>()
        trie.insert("cart")
        
        XCTAssertFalse(trie.contains("car"))
        
        let resultsWithCar = trie.collections(startingWith: "car")
        XCTAssertEqual(Set(resultsWithCar), Set(["cart"]))
    }
}
