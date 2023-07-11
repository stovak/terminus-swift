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
    
    func run() throws {
        let s = self.getTerminusConfig().getSession()
        if s.valid() {
            print("You are logged in as \(s.getUsername())")
        } else {
            print("You are not logged in")
        }
    }
}
