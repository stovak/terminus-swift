//
//  File.swift
//  
//
//  Created by TOM STOVALL on 7/6/23.
//

import ArgumentParser
import Foundation

struct Version: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Print the version number"
    )
    
    func run() throws {
        print(self)

    }
    
    func description() -> String {
        var des: String = "\(type(of: self)) :"
        for child in Mirror(reflecting: self).children {
            if let propName = child.label {
                des += "\(propName): \(child.value) \n"
            }
        }
     
        return des
    }
}

