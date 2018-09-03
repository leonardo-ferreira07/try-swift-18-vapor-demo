//
//  Request+BaseURL.swift
//  App
//
//  Created by Leonardo Vinicius Kaminski Ferreira on 03/09/18.
//

import Vapor

extension Request {
    var baseURL: String {
        var host = http.headers["Host"].first ?? ""
        if host.hasSuffix("/") {
            host = String(host.dropLast())
        }
        let scheme = http.remotePeer.scheme ?? "http"
        return "\(scheme)://\(host)/todos".finished(with: "/")
    }
}
