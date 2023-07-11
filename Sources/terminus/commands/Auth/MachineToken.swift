//
//  File.swift
//  
//
//  Created by TOM STOVALL on 7/5/23.
//

import ArgumentParser
import Foundation

struct MachineToken: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "macine-token",
        abstract: "Set the machine token",
        shouldDisplay: true
    )
    
}
