//
//  File.swift
//  
//
//  Created by TOM STOVALL on 7/8/23.
//

import Foundation

let version = "5.0.0-alpha1"

struct TerminusConfig {

    let fm: FileManager = FileManager.init()

    let sess: Session
    
    init() {
        sess = Session.fromFile(f: self.fm)
    }

    func getVersion() -> String {
        return version
    }
    
    func getFileManager() -> FileManager {
        return fm
    }
    
    func getSession() -> Session {
        return sess
    }
}
