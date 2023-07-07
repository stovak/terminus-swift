//
//  File.swift
//  
//
//  Created by TOM STOVALL on 7/6/23.
//
import ArgumentParser
import Foundation

@main
struct Terminus: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Command line interface for pantheon.io",
        version: "2023.07.06",
        subcommands: [
            Auth.self, Version.self
        ]
    )
    
    
}
