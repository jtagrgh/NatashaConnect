//
//  TestModel.swift
//  NatashaConnect
//
//  Created by jakob koblinsky on 2024-10-17.
//

import Foundation

class TestModel {
    @Published public var someText: String = ""
    
    init() {
        $someText
    }
}
