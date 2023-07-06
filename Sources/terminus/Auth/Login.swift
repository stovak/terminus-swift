//
//  File.swift
//  
//
//  Created by TOM STOVALL on 7/5/23.
//
import ArgumentParser
import Foundation

struct Login: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "login",
        abstract: "Use stored token to login",
        shouldDisplay: true
    )
}
