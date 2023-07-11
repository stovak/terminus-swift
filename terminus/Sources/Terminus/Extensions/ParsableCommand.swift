//
//  File.swift
//  
//
//  Created by TOM STOVALL on 7/10/23.
//

import ArgumentParser
import Foundation

var tc = TerminusConfig.init()


extension ParsableCommand {
    
    func getTerminusConfig() -> TerminusConfig {
        return tc
    }
    
}
