//
//  File.swift
//  
//
//  Created by TOM STOVALL on 7/8/23.
//

import Foundation

struct Session: Decodable {
    let session: String
    let expires_at: Int64
    let user_id: String
    
    
    // Get the session from $HOME/.terminus/cache/session.json
    public static func fromFile(f: FileManager) -> Session {
        let decoder = JSONDecoder()
        let sessionFile = f.homeDirectoryForCurrentUser.appendingPathComponent(path(withComponents: [".terminus", "cache", "session"]));
        let data = try! Data(contentsOf: sessionFile)
        let session = try! decoder.decode(Session.self, from: data)
        return session
    }
    
    public func valid() -> Bool {
        if self.session == "" || self.expires_at == 0 || self.user_id == ""  {
            return false
        }
        let now = Int64(Date().timeIntervalSince1970)
        if self.expires_at < now {
            return false
        }
        // TODO: add other validations
        return true
    }
}
