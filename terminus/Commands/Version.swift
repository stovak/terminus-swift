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
        let ver = self.getTerminusConfig().getVersion()
        print("\(ver)")
    }
    
    
}

