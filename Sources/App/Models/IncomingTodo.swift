//
//  IncomingTodo.swift
//  App
//
//  Created by Leonardo Vinicius Kaminski Ferreira on 03/09/18.
//

import Vapor

extension Todo {
    
    struct Incoming: Content {
        var title: String?
        var completed: Bool?
        var order: Int?
        
        func makeTodo() -> Todo {
            return Todo(
                id: nil,
                title: title ?? "n/a",
                completed: completed ?? false,
                order: order
            )
        }
    }
}
