//
//  File.swift
//  
//
//  Created by TOM STOVALL on 7/5/23.
//


import ArgumentParser
import Foundation


struct Auth: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "auth",
        abstract: "Authentication Commands",
        shouldDisplay: true,
        subcommands: [
            MachineToken.self, WhoAmI.self, Login.self
        ]
    )
}
