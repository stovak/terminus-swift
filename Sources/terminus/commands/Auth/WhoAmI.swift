//
//  File.swift
//  
//
//  Created by TOM STOVALL on 7/5/23.
//

import ArgumentParser
import Foundation

struct WhoAmI: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "whoami",
        abstract: "print the currently-logged in user",
        shouldDisplay: true
    )
}
